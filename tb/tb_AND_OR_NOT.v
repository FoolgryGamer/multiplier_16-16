module tb;

reg A,B,C,D;
wire Out;

AND_OR_NOT inst(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .Out(Out)
);

initial begin
    A = 0;
    B = 0;
    C = 0;
    D = 0;
    #100 
    A = 1;
    B = 1;
    C = 0;
    D = 0;
    #100 
    A = 1;
    B = 0;
    C = 0;
    D = 0;
    #100 
    A = 1;
    B = 1;
    C = 1;
    D = 1;
    #100
    A = 0;
    B = 0;
    C = 0;
    D = 1;
    #100 
    $finish;
end

endmodule
