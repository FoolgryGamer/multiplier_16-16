module BOOTH_encoder_0(
    input B_i2,
    input B_i1,
    input B_i0,
    output X,
    output X_2,
    output Comp,
    output not_Comp
);
wire not_B_i2;

not (not_B_i2,B_i2);
nor (X_2,not_B_i2,B_i1);
assign X = B_i1;
assign Comp = B_i2;
not (not_Comp,Comp);

endmodule