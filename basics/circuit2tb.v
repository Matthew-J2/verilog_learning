`timescale 1ns/1ps
`default_nettype none

module circuit2tb;
    reg p1a, p1b, p1c, p1d, p1e, p1f, p2a, p2b, p2c, p2d;
    wire p1y, p2y;

    circuit2 dut (
        .p1a(p1a), .p1b(p1b), .p1c(p1c), .p1d(p1d), .p1e(p1e), .p1f(p1f), .p2a(p2a), .p2b(p2b), .p2c(p2c), .p2d(p2d), 
        .p1y(p1y), .p2y(p2y)
    );

    integer i;

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, circuit2tb);

        for (i = 0; i < 1024; i = i + 1) begin
            {p1a, p1b, p1c, p1d, p1e, p1f, p2a, p2b, p2c, p2d} = i;
            #1 $display("t=%0t p1a=%0b p1b=%0b p1c=%0b  p1d=%0b  p1e=%0b  p1f=%0b  p2a=%0b p2b=%0b  p2c=%0b  p2d=%0b p1y=%0b p2y=%0b",
            $time, p1a, p1b, p1c, p1d, p1e, p1f, p2a, p2b, p2c, p2d, p1y, p2y);
        end


        $finish;
    end
endmodule

`default_nettype wire
