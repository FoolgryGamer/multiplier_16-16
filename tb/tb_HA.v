module tb;

reg A,B;
wire C_out,S;

HA inst(
    .A(A),
    .B(B),
    .C_out(C_out),
    .S(S)
);

initial begin
    A = 0;
    B = 0;
    #100 
    A = 0;
    B = 1;
    #100 
    A = 1;
    B = 0;
    #100 
    A = 1;
    B = 1;
    #100 
    $finish;
end

endmodule
