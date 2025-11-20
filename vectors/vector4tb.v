`timescale 1ns/1ps

module vector4tb;

    reg  [7:0] in;
    wire [7:0] out;

    // DUT instance
    vector4 dut (
        .in(in),
        .out(out)
    );

    initial begin
        // waveform dump
        $dumpfile("out.vcd");
        $dumpvars(0, vector4tb);

        // test values
        in = 8'h00; #10;
        in = 8'hA5; #10;
        in = 8'hFF; #10;
        in = 8'h3C; #10;
        in = 8'h12; #10;

        $finish;
    end

endmodule
