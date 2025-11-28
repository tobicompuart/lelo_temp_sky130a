module counter (
                input  wire         clk,
                input  wire         reset,
                output logic [10:0] count
                );

   //- Synchronous counter sampled by clk, async reset for clean startup
   always_ff @(posedge clk or posedge reset) begin
      if (reset) begin
         count     <= '0;
      end else begin
         count <= count + 11'd1;
      end
   end

endmodule // counter
