module BOOTH_encoder_1_7(
    input B_i2,
    input B_i1,
    input B_i0,
    input [15:0] A,
    output [16:0] P
);

wire X [16:0];
wire X_2 [16:0];
wire Comp [16:0];
wire not_Comp [16:0];
wire X_i_1 [16:0];
wire X_i_2 [16:0];

genvar i
generate
    for(i=0;i<16:i=i+1)
    begin: Part
        BOOTH_encoder_1_7 Booth_encoder(
        .B_i2(B_i2),
        .B_i1(B_i1),
        .B_i0(B_i0),
        .X(A[i]),
        .X_2(A[i]),
        .Comp(Comp),
        .not_Comp(not_Comp)
        );

        Partial_generator partial(
            .X(X),
            .X_2(X_2),
            .Comp(Comp),
            .not_Comp(not_Comp),
            .X_i_1(X_i_1),
            .X_i_0(X_i_0),
            .P(P)
        );
    end
endgenerate

BOOTH_encoder_1_7 BOOTH_0(
    .B_i2(),
    .B_i1(),
    .B_i0(),
    .X(),
    .X_2(),
    .Comp(),
    .not_Comp()
);


endmodule