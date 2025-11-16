`timescale 1ns/1ps
module fourwiretb;

    reg a, b, c;
    wire w, x, y, z;

    four_wire dut(.a(a), .b(b), .c(c), .w(w), .x(x), .y(y), .z(z));

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, fourwiretb);

        a = 0; b = 0; c = 0;
        #1 $display("t=%0t  a=%b b=%b c=%b | w=%b x=%b y=%b z=%b", $time, a, b, c, w, x, y, z);

        #5 a = 1; b = 0; c = 1;
        #1 $display("t=%0t  a=%b b=%b c=%b | w=%b x=%b y=%b z=%b", $time, a, b, c, w, x, y, z);

        #5 a = 1; b = 1; c = 0;
        #1 $display("t=%0t  a=%b b=%b c=%b | w=%b x=%b y=%b z=%b", $time, a, b, c, w, x, y, z);

        #5 a = 0; b = 1; c = 1;
        #1 $display("t=%0t  a=%b b=%b c=%b | w=%b x=%b y=%b z=%b", $time, a, b, c, w, x, y, z);

        #10 $finish;
            end

endmodule
