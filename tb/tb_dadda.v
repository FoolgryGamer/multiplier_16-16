module tb;

reg [19:0] pp0;
reg [18:0] pp1,pp2,pp3,pp4,pp5,pp6;
reg [17:0] pp7;
wire [7:0] sign;
wire [31:0] out0,out1;
reg [31:0] answer_left,answer_right;
reg [19:0] num_range0;
reg [18:0] num_range1,num_range2,num_range3,num_range4,num_range5,num_range6;
reg [17:0] num_range7;

dadda_tree inst(
    .pp0(pp0),
    .pp1(pp1),
    .pp2(pp2),
    .pp3(pp3),
    .pp4(pp4),
    .pp5(pp5),
    .pp6(pp6),
    .pp7(pp7),
    .sign(sign),
    .out0(out0),
    .out1(out1)
);

always begin
    #50
    num_range0 = $random()
    num_range1 = $random()
    num_range2 = $random()
    num_range3 = $random()
    num_range4 = $random()
    num_range5 = $random()
    num_range6 = $random()
    num_range7 = $random()
    #50
    answer_left = out0+out1;
    answer_right = pp0+pp1+pp2+pp3+pp4+pp5+pp6+pp7+{sign[7],1'b0,sign[6],1'b0,sign[5],1'b0,sign[4],1'b0,sign[3],1'b0,sign[2],1'b0,sign[1],1'b0,sign[0]};
    if(answer_left == answer_right)
        right = right + 1;
    count = count + 1;
end

assign sign = {num_range7[17],num_range6[18],num_range5[18],num_range4[18],num_range3[18],num_range2[18],num_range1[18],num_range0[19]};

integer count,right;
initial begin
    count = 0;
    right = 0;
    #1000000 
    $display("The right rate is %f",right/count);
    $finish;
end

endmodule