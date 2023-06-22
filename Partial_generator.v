module Partial_generator(
    input X,
    input X_2,
    input Comp,
    input not_Comp,
    input A_i_1,
    input A_i_0,
    output P
);

wire not_output,output_sig;

AND_OR_NOT inst0(A_i_1,X,A_i_0,X_2,not_output);
not (output_sig,not_output);
AND_OR_NOT inst1(not_output,not_Comp,output_sig,Comp,P);

endmodule