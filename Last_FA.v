module Last_FA(
    input A,
    input B,
    input C_in,
    output S
);

wire M;
wire not_A,not_B,not_C_in,not_M;

not (not_A,A);
not (not_B,B);
not (not_C_in,C_in);

AND_OR_NOT inst1(A,not_B,B,not_A,M);
not (not_M,M);

AND_OR_NOT inst2(M,not_C_in,C_in,not_M,S);

// assign C_out = (A&B) | (A&C_in) | (B&C_in);

endmodule