`timescale 1ns/1ps
`default_nettype none

module vector2tb;

    reg  [31:0] in;
    wire [31:0] out;

    vector2 dut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vector2tb);

        in = 32'h00000000; #1 $display("in=%h out=%h", in, out);
        in = 32'h11223344; #1 $display("in=%h out=%h", in, out);
        in = 32'hAABBCCDD; #1 $display("in=%h out=%h", in, out);
        in = 32'hDEADBEEF; #1 $display("in=%h out=%h", in, out);
        $finish;
    end
endmodule
