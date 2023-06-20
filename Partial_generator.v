module Partial_generator(
    input X,
    input X_2,
    input Comp,
    input not_Comp,
    input X_i_1,
    input X_i_0,
    output P
);

wire not_output,output_sig;

AND_OR_NOT inst0(X_i_1,X,X_i_0,X_2,not_output);
assign output_sig = ~not_output;
AND_OR_NOT inst1(not_output,not_Comp,output_sig,Comp,P);

endmodule