
`timescale 1ns/1ps
module tb;
    wire zero;

    hello_verilog_2 dut(.zero(zero));

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, tb);

        #1 $display("zero = %b", zero);
        #10 $finish;
    end
endmodule
