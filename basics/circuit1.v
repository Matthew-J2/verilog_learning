`default_nettype none
module circuit1(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 

    wire and_gate1;
    wire and_gate2;
    assign and_gate1 = a&b;
    assign and_gate2 = c&d;
    wire or_gate;
    wire not_gate;
    assign or_gate = and_gate1 | and_gate2;
    assign out = or_gate;
    assign out_n = ~or_gate;

endmodule
