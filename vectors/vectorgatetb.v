`timescale 1ns/1ps
`default_nettype none

module vectorgatetb;

    reg  [2:0] a;
    reg  [2:0] b;
    wire [2:0] out_or_bitwise;
    wire       out_or_logical;
    wire [5:0] out_not;

    vectorgate dut (
        .a(a),
        .b(b),
        .out_or_bitwise(out_or_bitwise),
        .out_or_logical(out_or_logical),
        .out_not(out_not)
    );

    integer i;

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vectorgatetb);

        for (i = 0; i < 64; i = i + 1) begin
            {a, b} = i;

            #1 $display(
                "t=%0t | a=%b b=%b | bit_or=%b | log_or=%b | out_not=%b",
                $time, a, b, out_or_bitwise, out_or_logical, out_not
            );
        end

        $finish;
    end

endmodule
