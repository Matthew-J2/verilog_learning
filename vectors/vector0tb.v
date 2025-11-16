`timescale 1ns/1ps
`default_nettype none

module vector0tb;
    reg [2:0] vec;
    wire [2:0] outv;
    wire o0, o1, o2;

    vector0 dut (
        .vec(vec),
        .outv(outv),
        .o2(o2),
        .o1(o1),
        .o0(o0)
    );
    integer i;

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, vector0tb);
        for (i = 0; i < 8; i = i + 1) begin
            vec = i;
            #1 $display("t=%0t vec=%b outv=%b o0=%b o1=%b o2=%b", $time, vec, outv, o0, o1, o2);
        end
        $finish;
    end
endmodule

`default_nettype wire
