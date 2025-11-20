`timescale 1ns/1ps

module vector3tb;

    // DUT inputs
    reg  [4:0] a, b, c, d, e, f;

    // DUT outputs
    wire [7:0] w, x, y, z;

    // Instantiate DUT
    vector3 dut (
        .a(a), .b(b), .c(c),
        .d(d), .e(e), .f(f),
        .w(w), .x(x), .y(y), .z(z)
    );

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vector3tb);

        a = 5'h0; b = 5'h1; c = 5'h2;
        d = 5'h3; e = 5'h4; f = 5'h5;
        #1;

        a = 5'h1F; b = 5'h0A; c = 5'h0F;
        d = 5'h10; e = 5'h15; f = 5'h1B;
        #1;

        a = 5'd7; b = 5'd8; c = 5'd9;
        d = 5'd10; e = 5'd11; f = 5'd12;
        #1;

        $finish;
    end

endmodule
