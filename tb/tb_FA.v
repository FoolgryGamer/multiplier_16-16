module tb;

reg A,B,C_in;
wire C_out,S;

FA inst(
    .A(A),
    .B(B),
    .C_in(C_in),
    .C_out(C_out),
    .S(S)
);

initial begin
    A = 0;
    B = 0;
    C_in = 0;
    #100 
    A = 0;
    B = 1;
    C_in = 0;
    #100 
    A = 1;
    B = 0;
    C_in = 0;
    #100 
    A = 1;
    B = 1;
    C_in = 0;
    #100
    A = 0;
    B = 0;
    C_in = 1;
    #100 
    A = 0;
    B = 1;
    C_in = 1;
    #100 
    A = 1;
    B = 0;
    C_in = 1;
    #100 
    A = 1;
    B = 1;
    C_in = 1;
    #100 
    $finish;
end

endmodule;