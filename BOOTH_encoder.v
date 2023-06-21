module BOOTH_encoder_1_7(
    input B_i2,
    input B_i1,
    input B_i0,
    output X,
    output X_2,
    output Comp,
    output not_Comp
);

wire not_X,not_X_2;
wire not_B_i2,not_B_i1,not_B_i0;
// wire X_0;
wire X_1_X_0,not_X_1_X_0;
not (not_B_i2,B_i2);// not
not (not_B_i1,B_i1);// not
not (not_B_i0,B_i0);// not

AND_OR_NOT inst1(not_B_i0,not_B_i1,B_i1,B_i0,X);

nor (X_1_X_0,not_B_i1,not_B_i0);
nor (not_X_1_X_0,B_i1,B_i0);
AND_OR_NOT inst2(not_B_i2,X_1_X_0,B_i2,not_X_1_X_0,not_X_2);
not (X_2,not_X_2);

// nor (X_2,X,X_0);
AND_OR_NOT inst3(B_i2,not_B_i1,B_i2,not_B_i0,not_Comp);
not (Comp,not_Comp);
// assign Comp = X_0 & B_i2;

endmodule