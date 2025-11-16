`timescale 1ns / 1ps
module invertertb;

  reg  in;
  wire out;

  inverter dut (
      .in (in),
      .out(out)
  );

  initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, invertertb);
    in = 0;
    #1 $display("t=%0t  in=%b out=%b", $time, in, out);
    in = 1;
    #1 $display("t=%0t  in=%b out=%b", $time, in, out);
  end
endmodule
