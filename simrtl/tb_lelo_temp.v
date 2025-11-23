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

   int clk_period = 30517;

   logic rst_n = 0;
   logic clk = 0;
   logic ena = 0;
   always #(clk_period/2) clk = ~clk;

   real  temperature = -40;

   logic [7:0]    ui_in;
   logic [7:0]    uo_out;
   logic [7:0]    uio_in;
   logic [7:0]    uio_out;
   logic [7:0]    uio_oe;

   lelo_temp  dut (
                     .ui_in(ui_in),
                     .uo_out(uo_out),
                     .uio_in(uio_in),
                     .uio_out(uio_out),
                     .uio_oe(uio_oe),
                     .ena(ena),
                     .clk(clk),
                     .rst_n(rst_n)
`ifdef ANA_TYPE_REAL
   ,.temperature(temperature)
`endif
                     );

   integer        count = 0;
   integer        lastcount = 0;

   always_ff @(posedge uo_out[0] or negedge clk) begin

      if(clk) begin
         if(uo_out[0])
           count += 1;
      end
      else begin
         lastcount = count;
         count = 0;
      end
   end // always_ff @ (posedge uo_out[0] or negedge clk)

   integer i;
   integer f;

   //How many temperature steps to run
   integer steps = 50;
   integer tstep = 1;

   initial
     begin
        $dumpfile("tb_lelo_temp.vcd");
        $dumpvars(0,test);
        f = $fopen("output.txt","w");
        $fwrite(f,"temperature,count\n");
        ui_in = 0;
        #10 rst_n = 0;
        #10 rst_n = 1;

        //Enable the module
        ui_in[0] = 1;

        //change the temperature
        tstep = (125+40)/steps;
        @(negedge clk)
        for (i=0;i<steps;i++) begin
           @(negedge clk)
           temperature +=tstep;
           $fwrite(f,"%d,%d\n",temperature,lastcount);
        end

        #(clk_period*2) $stop;
     end
endmodule
