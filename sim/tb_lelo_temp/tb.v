//====================================================================
//        Copyright (c) 2025 Carsten Wulff Software, Norway
// ===================================================================
// Created       : wulff at 2025-11-23
// ===================================================================
//  The MIT License (MIT)
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//
//====================================================================
`timescale 1 ns / 1 ps

module test;

   //- Clock period is set to 1/(32768 Hz) ns
   //- Most micro controllers will have a real time clock of this frequency
   int clk_period = 30517;

   //- Initialize reset ETC
   logic rst_n = 0;
   logic clk = 0;
   logic ena = 0;

   //- Our real time clock
   always #(clk_period/2) clk = ~clk;

   //- Default temperature
   real  temperature = -40;

   logic [7:0]    ui_in;
   logic [7:0]    uo_out;
   logic [7:0]    uio_in;
   logic [7:0]    uio_out;
   logic [7:0]    uio_oe;

   `LELO_DESIGN  dut (
                     .ui_in(ui_in),
                     .uo_out(uo_out),
                     .uio_in(uio_in),
                     .uio_out(uio_out),
                     .uio_oe(uio_oe),
                     .ena(ena),
                     .clk(clk),
                     .rst_n(rst_n)
//- Magic to feed the temperature into the verilog model
`ifdef ANA_TYPE_REAL
   ,.temperature(temperature)
`endif
                     );

   wire [10:0]    count;
   
   //- Counter to count the oscillator clock cycles from the analog module
   logic reset = 0;
   counter dut_count (.clk(uo_out[0]),
                      .reset(reset),
                      .count(count));

   //- Synchronize the count to the clock domain
   logic [10:0] lastcount;
   always_ff @(posedge clk ) begin
      lastcount <= count;
   end

   integer i;
   integer f;

   //How many temperature steps to run
   integer steps = 50;
   integer tstep = 1;

   initial
     begin

        //- Output a file that can be opened in GTKWave
        $dumpfile("tb.vcd");
        $dumpvars(0,test);

        //- Create a CSV file
        f = $fopen("tb.csv","w");
        $fwrite(f,"temperature,count\n");
        ui_in = 0;
        #10 rst_n = 0;
        #10 rst_n = 1;

        //Enable the module
        ui_in[0] = 1;

        //Change the temperature
        tstep = (125+40)/steps;
        @(posedge clk)
         #10 reset = 1;
         #10 reset = 0;
        for (i=0;i<steps;i++) begin
           @(posedge clk)
           #10 reset = 1;
           #10 reset = 0;
           temperature +=tstep;
           if(i > 1)
             $fwrite(f,"%d,%d\n",temperature,lastcount);
        end

        #(clk_period*2) $stop;
     end
endmodule
