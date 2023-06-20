module HA(
    input A,
    input B,
    output C_out,
    output S
);
wire not_B,not_A;

nor (C_out,not_B,not_A);
not (not_B,B);
not (not_A,A);
AND_OR_NOT inst(A,B,not_A,not_B,S);

endmodule