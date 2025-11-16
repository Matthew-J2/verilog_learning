`timescale 1ns / 1ps
module nortb;

  reg a;
  reg b;
  wire out;

  nor_gate dut (
      .a (a),
      .b (b),
      .out(out)
  );

  initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, nortb);
    a = 0; b = 0;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    a = 1;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    a = 0; b = 1;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    a = 1;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
 
  end
endmodule
