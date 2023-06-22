module BOOTH0(
    input B_i2,
    input B_i1,
    input B_i0,
    input [15:0] A,
    output neg,
    output [16:0] P
);

wire X;
wire X_2;
wire Comp;
wire not_Comp;

assign neg = Comp;

BOOTH_encoder_0 inst0(
    .B_i2(B_i2),
    .B_i1(B_i1),
    .B_i0(B_i0),
    .X(X),
    .X_2(X_2),
    .Comp(Comp),
    .not_Comp(not_Comp)
    );

wire mid0,not_mid0,mid16,not_mid16;

genvar i;
generate
    for(i=0; i<17; i=i+1) begin: part
        if(i == 0) begin
            nand (not_mid0,A[0],X);
            not (mid0,not_mid0);
            AND_OR_NOT inst1(not_mid0,not_Comp,mid0,Comp,P[0]);
        end
        else if(i == 16) begin
            // nand (not_mid16,A[15],X_2);
            // not (mid16,not_mid16);
            // AND_OR_NOT inst2(not_mid16,not_Comp,mid16,Comp,P[16]);
            Partial_generator partial(
                .X(X),
                .X_2(X_2),
                .Comp(Comp),
                .not_Comp(not_Comp),
                .A_i_1(A[15]),
                .A_i_0(A[15]),
                .P(P[i])
                );
        end
        else begin
            Partial_generator partial(
                .X(X),
                .X_2(X_2),
                .Comp(Comp),
                .not_Comp(not_Comp),
                .A_i_1(A[i]),
                .A_i_0(A[i-1]),
                .P(P[i])
                );
        end
    end
endgenerate

endmodule