module HA(
    input A,
    input B,
    output C_out,
    output S
);
wire not_B,not_A;

nand (C_out,A,B);
not (not_B,B);
not (not_A,A);
AND_OR_NOT inst(A,not_B,not_A,B,S);

endmodule