module tb;

// reg [19:0] pp0;
// reg [18:0] pp1,pp2,pp3,pp4,pp5,pp6;
// reg [17:0] pp7;
reg [7:0] sign;
wire [31:0] out0,out1;
reg [31:0] answer_left,answer_right;
reg [19:0] num_range0;
reg [18:0] num_range1,num_range2,num_range3,num_range4,num_range5,num_range6;
reg [17:0] num_range7;

integer count,right;

dadda_tree inst(
    .pp0(num_range0),
    .pp1(num_range1),
    .pp2(num_range2),
    .pp3(num_range3),
    .pp4(num_range4),
    .pp5(num_range5),
    .pp6(num_range6),
    .pp7(num_range7),
    .sign(sign),
    .out0(out0),
    .out1(out1)
);

// always begin
//     #50
//     num_range0 = $random();
//     num_range1 = $random();
//     num_range2 = $random();
//     num_range3 = $random();
//     num_range4 = $random();
//     num_range5 = $random();
//     num_range6 = $random();
//     num_range7 = $random();
//     #50
//     answer_left = out0+out1;
//     answer_right = num_range0+{num_range1,2'b0}+{num_range2,4'b0}+{num_range3,6'b0}+{num_range4,8'b0}+{num_range5,10'b0}+{num_range6,12'b0}+{num_range7,14'b0}+{sign[7],1'b0,sign[6],1'b0,sign[5],1'b0,sign[4],1'b0,sign[3],1'b0,sign[2],1'b0,sign[1],1'b0,sign[0]};
//     if(answer_left == answer_right)
//         right = right + 1;
//     count = count + 1;
// end

// assign sign = {num_range7[17],num_range6[18],num_range5[18],num_range4[18],num_range3[18],num_range2[18],num_range1[18],num_range0[19]};


initial begin
    count = 0;
    right = 0;
    answer_left = 0;
    answer_right = 0;
    #100
    num_range0 = 20'hfffff;
    num_range1 = 19'h7ffff;
    num_range2 = 19'h7ffff;
    num_range3 = 19'h7ffff;
    num_range4 = 19'h7ffff;
    num_range5 = 19'h7ffff;
    num_range6 = 19'h7ffff;
    num_range7 = 18'h3ffff;
    sign = 8'hff;
    #100
    answer_left = out0+out1;
    answer_right = num_range0+{num_range1,2'b0}+{num_range2,4'b0}+{num_range3,6'b0}+{num_range4,8'b0}+{num_range5,10'b0}+{num_range6,12'b0}+{num_range7,14'b0}+{sign[7],1'b0,sign[6],1'b0,sign[5],1'b0,sign[4],1'b0,sign[3],1'b0,sign[2],1'b0,sign[1],1'b0,sign[0]};
    #100
    num_range0 = 20'h0;
    num_range1 = 19'h0;
    num_range2 = 19'h0;
    num_range3 = 19'h0;
    num_range4 = 19'h0;
    num_range5 = 19'h0;
    num_range6 = 19'h0;
    num_range7 = 18'h0;
    sign = 8'h0;
    #100
    answer_left = out0+out1;
    answer_right = num_range0+{num_range1,2'b0}+{num_range2,4'b0}+{num_range3,6'b0}+{num_range4,8'b0}+{num_range5,10'b0}+{num_range6,12'b0}+{num_range7,14'b0}+{sign[7],1'b0,sign[6],1'b0,sign[5],1'b0,sign[4],1'b0,sign[3],1'b0,sign[2],1'b0,sign[1],1'b0,sign[0]};
    #100
    // $display("The right rate is %f",right/count);
    $finish;
end

endmodule