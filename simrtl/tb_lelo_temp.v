`timescale 1 ns / 1 ps

module tb_lelo_temp;

  logic rst_n = 0;
  logic clk = 0;
  logic ena = 0;
  always #5 clk = !clk;

  logic [7:0] ui_in;
  logic [7:0] uo_out;
  logic [7:0] uio_in;
  logic [7:0] uio_out;
  logic [7:0] uio_oe;
  lelo_temp dut (
            .ui_in(ui_in),
            .uo_out(uo_out),
            .uio_in(uio_in),
            .uio_out(uio_out),
            .uio_oe(uio_oe),
            .ena(ena),
            .clk(clk),
            .rst_n(rst_n)
            );
  initial
    begin
      $dumpfile("tb_lelo_temp.vcd");
      $dumpvars(0,test);
      ui_in = 0;
      # rst_n = 0;
      # rst_n = 1;

      ui_in[0] = 1;

  end
 endmodule
