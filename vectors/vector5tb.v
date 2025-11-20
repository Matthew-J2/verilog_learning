`timescale 1ns/1ps

module vector5tb;

    reg  [7:0] in;
    wire [31:0] out;

    vector5 dut (
        .in(in),
        .out(out)
    );

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vector5tb);

        // test patterns
        in = 8'h00; #10;
        in = 8'hFF; #10;
        in = 8'hA5; #10;
        in = 8'h3C; #10;
        in = 8'h5A; #10;

        $finish;
    end

endmodule
