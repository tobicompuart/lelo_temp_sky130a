

module temp_osc_measure #(
                          parameter WIDTH = 10                // Counter resolution
                          )(
                            input wire               lf_clk,  // 32.768 kHz reference
                            input wire               start,
                            input wire               ana_clk, // Temperature-dependent oscillator
                            input wire               rst_n,
                            output logic             done,
                            output logic             ana_en,  // Enables analog osc (1 lf_clk period)
                            output logic [WIDTH-1:0] cycles   // Measured cycles
                            );

   logic                                             reset;

   //- Counter
   logic [WIDTH-1:0]                                 reg_count;
   logic [WIDTH-1:0]                                 count;
   always_comb begin
      count = reg_count + 1;
   end
   always_ff @(posedge ana_clk or posedge reset) begin
      if(reset)
        reg_count <= 0;
      else
        reg_count <= count;
   end

   //- FSM
   parameter IDLE = 0, PWRUP = 1, PWRDWN = 2, CAPTURE = 3;
   logic [1:0] state;
   logic [1:0] next_state;


   //- Decide next state
   always_comb begin
      case (state)
        IDLE: next_state = start ? PWRUP : IDLE;
        PWRUP: next_state = PWRDWN ;
        PWRDWN: next_state = CAPTURE;
        CAPTURE: next_state = IDLE;
        default: next_state = IDLE;
      endcase // case (state)
   end


   //- Control signals
   always_ff @(posedge lf_clk or negedge rst_n) begin
      if(~rst_n) begin
         state <= IDLE;
         ana_en <= 0;
         reset <= 1;
         done <= 1;
      end
      else begin
         state <= next_state;
         case (state)
           IDLE: begin
              ana_en <= 0;
              reset <= 1;
              done <= 1;
           end
           PWRUP: begin
              ana_en <= 1;
              reset <= 0;
              done <= 0;
           end
           PWRDWN: begin
              ana_en <= 0;
              reset <= 0;
              done <= 0;
           end
           CAPTURE: begin
              ana_en <= 0;
              reset <= 0;
              cycles <= reg_count;
              done <= 0;
           end
         endcase
      end
   end

endmodule
