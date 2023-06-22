module multi_top(
    input [15:0] A,
    input [15:0] B,
    output [31:0] out
);
wire [31:0] out0,out1;
wire [16:0] pp0,pp1,pp2,pp3,pp4,pp5,pp6,pp7;
wire [7:0] neg;
wire [7:0] es;

BOOTH0 B0 (.B_i2(B[1]),.B_i1(B[0]),.B_i0(0),.A(A),.neg(neg[0]),.P(pp0));
BOOTH_1_7 B1 (.B_i2(B[3]),.B_i1(B[2]),.B_i0(B[1]),.A(A),.neg(neg[1]),.P(pp1));
BOOTH_1_7 B2 (.B_i2(B[5]),.B_i1(B[4]),.B_i0(B[3]),.A(A),.neg(neg[2]),.P(pp2));
BOOTH_1_7 B3 (.B_i2(B[7]),.B_i1(B[6]),.B_i0(B[5]),.A(A),.neg(neg[3]),.P(pp3));
BOOTH_1_7 B4 (.B_i2(B[9]),.B_i1(B[8]),.B_i0(B[7]),.A(A),.neg(neg[4]),.P(pp4));
BOOTH_1_7 B5 (.B_i2(B[11]),.B_i1(B[10]),.B_i0(B[9]),.A(A),.neg(neg[5]),.P(pp5));
BOOTH_1_7 B6 (.B_i2(B[13]),.B_i1(B[12]),.B_i0(B[11]),.A(A),.neg(neg[6]),.P(pp6));
BOOTH_1_7 B7 (.B_i2(B[15]),.B_i1(B[14]),.B_i0(B[13]),.A(A),.neg(neg[7]),.P(pp7));

not (es[0],pp0[16]);
not (es[1],pp1[16]);
not (es[2],pp2[16]);
not (es[3],pp3[16]);
not (es[4],pp4[16]);
not (es[5],pp5[16]);
not (es[6],pp6[16]);
not (es[7],pp7[16]);

dadda_tree inst0(
    .pp0({es[0],pp0[16],pp0[16],pp0}),
    .pp1({1'b1,es[1],pp1}),
    .pp2({1'b1,es[2],pp2}),
    .pp3({1'b1,es[3],pp3}),
    .pp4({1'b1,es[4],pp4}),
    .pp5({1'b1,es[5],pp5}),
    .pp6({1'b1,es[6],pp6}),
    .pp7({es[7],pp7}),
    .sign({neg[7],neg[6],neg[5],neg[4],neg[3],neg[2],neg[1],neg[0]}),
    .out0(out0),
    .out1(out1)
);

RCA inst1(
    .in0(out0),
    .in1(out1),
    .out(out)
);

endmodule