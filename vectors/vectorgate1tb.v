`timescale 1ns/1ps

module tb;

    reg  [3:0] in;
    wire out_and;
    wire out_or;
    wire out_xor;

    top_module dut (
        .in(in),
        .out_and(out_and),
        .out_or(out_or),
        .out_xor(out_xor)
    );

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, tb);

        in = 0;
        repeat (16) begin
            #1;
            $display("in=%b  AND=%b  OR=%b  XOR=%b",
                     in, out_and, out_or, out_xor);
            in = in + 1;
        end

        $finish;
    end

endmodule
