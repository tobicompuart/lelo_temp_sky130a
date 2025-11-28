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
`default_nettype none

module LELO_TEMP (
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,   // Dedicated outputs
  input  wire [7:0] uio_in,   // IOs: Input path
  output wire [7:0] uio_out,  // IOs: Output path
  output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
  input  wire       ena,      // always 1 when the design is powered, so you can ignore it
  input  wire       clk,      // clock
  input  wire       rst_n     // reset_n - low to reset
`ifdef ANA_TYPE_REAL
  ,input real        temperature
`endif
  );

   //- Define the clock
   logic            oclk = 0;
   wire            dout;

   //- Setup the outputs
   logic            tie_l  =0;
   assign dout  = oclk*clk;
   assign uo_out = {7'b0,dout};
   assign uio_out = tie_l;
   assign uio_oe  = tie_l;


   //- Pre-calcualted k/q
   real             k_q = 8.61733e-5;
   real             deltaV,id,vd;

   //- Resistance
   real             rd = 70e3;
   real             res_temp = rd;

   //- Capacitor to charge
   real             cap = 100e-15;

   //- Delta time for output clock
   real             dt = 1000;
   real             to_ns = 1e9;


   always_ff @(posedge clk) begin
`ifdef ANA_TYPE_REAL

      //- Calculate diode voltage
      //- https://analogicus.com/aic2025/2024/10/25/Diodes.html
      vd = k_q*(273.15 + temperature)*(3 - 3 *$ln(273.15 + temperature)) + 1.12;

      //- Calculate the delta voltage across the resistance
      deltaV = k_q*(273.15 + temperature)*$ln(8);

      //Model temperture dependent resistance
      res_temp = (rd + (273.15 + temperature)/300*rd/20);

      //- Calculate the time to reach the diode voltage
      id = deltaV/res_temp;

      dt = cap*vd/id*to_ns;
`endif
   end

   //- Generate the output clock
   always begin
      #(dt) oclk = ~oclk;
   end

endmodule
