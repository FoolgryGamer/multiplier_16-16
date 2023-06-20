module tb;

reg B_i2,B_i1,B_i0;
wire X,X_2,Comp,not_Comp;
reg  X_i_1,X_i_0;
wire P;
BOOTH_encoder_1_7 inst(
    .B_i2(B_i2),
    .B_i1(B_i1),
    .B_i0(B_i0),
    .X(X),
    .X_2(X_2),
    .Comp(Comp),
    .not_Comp(not_Comp)
);

Partial_generator inst1(
    .X(X),
    .X_2(X_2),
    .Comp(Comp),
    .not_Comp(not_Comp),
    .X_i_1(X_i_1),
    .X_i_0(X_i_0),
    .P(P)
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

always begin
    #50 X_i_0 = ~X_i_0;
end

always begin
    #25 X_i_1 = ~X_i_1;
end

always begin
    #20 $display("%b,%b,%b,Xi=%b, X_0 = %b,P = %b",B_i2,B_i1,B_i0,X_i_1,X_i_0,P);
    #5;
end

initial begin
    #0
    B_i2 = 0;
    B_i1 = 0;
    B_i0 = 0;
    X_i_1 = 0;
    X_i_0 = 0;
    #2000 $finish;
end


endmodule