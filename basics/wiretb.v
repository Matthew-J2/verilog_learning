`timescale 1ns/1ps
module wiretb;

    reg in;
    wire out;

    one_wire dut(.in(in), .out(out));

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, wiretb);

        in = 0;
        #1  $display("t=%0t  in=%b out=%b", $time, in, out);

        #5  in = 1;
        #1  $display("t=%0t  in=%b out=%b", $time, in, out);

        #5  in = 0;
        #1  $display("t=%0t  in=%b out=%b", $time, in, out);

        #10 $finish;
    end

endmodule
