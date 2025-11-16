`timescale 1ns / 1ps
module circuit1tb;

  reg a;
  reg b;
  reg c;
  reg d;
  wire out;
  wire out_n;

  circuit1 dut (
      .a (a),
      .b (b),
      .c (c),
      .d (d),
      .out (out),
      .out_n(out_n)
  );

  initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, circuit1tb);
    a = 0; b = 0; c = 0; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 0; c = 0; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 0; c = 1; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 0; c = 1; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 1; c = 0; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 1; c = 0; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 1; c = 1; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 0; b = 1; c = 1; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 0; c = 0; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 0; c = 0; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 0; c = 1; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 0; c = 1; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 1; c = 0; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 1; c = 0; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 1; c = 1; d = 0;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
    a = 1; b = 1; c = 1; d = 1;
    #1 $display("t=%0t  a=%b b=%b c=%b d=%b out=%b out_n=%b", $time, a, b, c, d, out, out_n);
  end
endmodule
