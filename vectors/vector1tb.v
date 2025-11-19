`timescale 1ns/1ps
`default_nettype none

module vector1tb;

    reg  [15:0] in;
    wire [7:0]  out_hi;
    wire [7:0]  out_lo;

    vector1 dut (
        .in(in),
        .out_hi(out_hi),
        .out_lo(out_lo)
    );

    integer i;

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vector1tb);

        in = 16'h0000; #1 $display("in=%h  hi=%h lo=%h", in, out_hi, out_lo);
        in = 16'h1234; #1 $display("in=%h  hi=%h lo=%h", in, out_hi, out_lo);
        in = 16'hFF00; #1 $display("in=%h  hi=%h lo=%h", in, out_hi, out_lo);
        in = 16'hABCD; #1 $display("in=%h  hi=%h lo=%h", in, out_hi, out_lo);

     $finish;
    end

endmodule
