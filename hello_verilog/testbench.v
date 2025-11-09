`timescale 1ns/1ps
module tb;
    wire one;

    hello_verilog dut(.one(one));

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, tb);

        #1 $display("one = %b", one);
        #10 $finish;
    end
endmodule
