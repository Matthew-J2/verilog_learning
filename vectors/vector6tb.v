`timescale 1ns/1ps

module vector6tb;

    reg a, b, c, d, e;
    wire [24:0] out;

    vector6 dut (
        .a(a), .b(b), .c(c), .d(d), .e(e),
        .out(out)
    );

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vector6tb);

        {a,b,c,d,e} = 5'b00000; #10;
        {a,b,c,d,e} = 5'b11111; #10;
        {a,b,c,d,e} = 5'b10101; #10;
        {a,b,c,d,e} = 5'b01010; #10;
        {a,b,c,d,e} = 5'b11001; #10;

        $finish;
    end

endmodule
