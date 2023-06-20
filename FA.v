module FA(
    input A,
    input B,
    input C_in,
    output C_out,
    output S
);

wire M;
wire not_A,not_B,not_C_in,not_M;

not (not_A,A);
not (not_B,B);
not (not_C_in,C_in);

AND_OR_NOT inst1(A,not_B,B,not_A,M);
not (not_M,M);

AND_OR_NOT inst2(M,C_in,not_C_in,not_M,S);

AND_OR_NOT inst3(C_out,A,B);
// assign C_out = (A&B) | (A&C_in) | (B&C_in);

endmodule