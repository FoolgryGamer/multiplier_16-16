module tb;

reg B_i2,B_i1,B_i0;
reg [15:0] A;
wire [16:0] P;
BOOTH_1_7 inst(
    .B_i2(B_i2),
    .B_i1(B_i1),
    .B_i0(B_i0),
    .A(A),
    .P(P)
);

always begin
    #50
    A = $random();
end

initial begin
    #0
    A = 0;
    B_i2 = 0;
    B_i1 = 0;
    B_i0 = 0;
    #200
    B_i2 = 0;
    B_i1 = 0;
    B_i0 = 1;
    #200
    B_i2 = 0;
    B_i1 = 1;
    B_i0 = 0;
    #200
    B_i2 = 0;
    B_i1 = 1;
    B_i0 = 1;
    #200
    B_i2 = 1;
    B_i1 = 0;
    B_i0 = 0;
    #200
    B_i2 = 1;
    B_i1 = 0;
    B_i0 = 1;
    #200
    B_i2 = 1;
    B_i1 = 1;
    B_i0 = 0;
    #200
    B_i2 = 1;
    B_i1 = 1;
    B_i0 = 1;
    #200 $finish;
end


endmodule