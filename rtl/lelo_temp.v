/*
* Copyright (c) 2024 Your Name
* SPDX-License-Identifier: Apache-2.0
*/

`default_nettype none

module lelo_temp (
  input  wire [7:0] ui_in,    // Dedicated inputs
  output wire [7:0] uo_out,   // Dedicated outputs
  input  wire [7:0] uio_in,   // IOs: Input path
  output wire [7:0] uio_out,  // IOs: Output path
  output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
  input  wire       ena,      // always 1 when the design is powered, so you can ignore it
  input  wire       clk,      // clock
  input  wire       rst_n     // reset_n - low to reset
);

// All output pins must be assigned. If not used, assign to 0.
assign uo_out  = ui_in + uio_in;  // Example: ou_out is the sum of ui_in and uio_in
assign uio_out = 0;
assign uio_oe  = 0;

logic[3:0] count;

always_ff @(posedge clk or rst_n) begin
if(!rst_n) begin
  uo_out = 0;
  count = 0;
  end
else begin
  count = count + 1;
  if(count == 5)
    uo_out[0] = 1;
  else
    uo_out[0] = 0;
end


// List all unused inputs to prevent warnings
wire _unused = &{ena, 1'b0};

endmodule
