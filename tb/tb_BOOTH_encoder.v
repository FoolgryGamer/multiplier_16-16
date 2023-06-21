module tb;

reg B_i2,B_i1,B_i0;
wire X,X_2,Comp;

BOOTH_encoder_1_7 inst(
// BOOTH_encoder_0 inst(
    .B_i2(B_i2),
    .B_i1(B_i1),
    .B_i0(B_i0),
    .X(X),
    .X_2(X_2),
    .Comp(Comp)
);

always begin
    #400 B_i2 = ~B_i2;
end

always begin
    #200 B_i1 = ~B_i1;
end

always begin
    #100 B_i0 = ~B_i0;
end

initial begin
    #0
    B_i2 = 0;
    B_i1 = 0;
    B_i0 = 0;
    #2000 $finish;
end

endmodule