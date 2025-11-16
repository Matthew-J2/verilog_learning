`timescale 1ns / 1ps
module andtb;

  reg a;
  reg b;
  wire out;

  and_gate dut (
      .a (a),
      .b (b),
      .out(out)
  );

  initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, andtb);
    a = 0;
    b = 0;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    a = 1;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    a = 0;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    b = 1;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
    a = 1;
    #1 $display("t=%0t  a=%b b=%b out=%b", $time, a, b, out);
 
  end
endmodule
