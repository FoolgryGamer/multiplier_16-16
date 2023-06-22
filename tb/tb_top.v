module tb;

// reg [19:0] pp0;
// reg [18:0] pp1,pp2,pp3,pp4,pp5,pp6;
// reg [17:0] pp7;

reg signed [15:0] in0,in1;
wire [31:0] out;
reg signed [31:0] answer_left;

integer count,right;

multi_top inst0(
    .A(in0),
    .B(in1),
    .out(out)
);

always begin
    #50
    in0 = $random();
    in1 = $random();
    #50
    answer_left = in0*in1;
    if(answer_left == out)
        right = right + 1;
    count = count + 1;
end

initial begin
    count = 0;
    in0 = 0;
    in1 = 0;
    right = 0;
    answer_left = 0;
    // #50
    // in0 = 0;
    // in1 = 0;
    // answer_left = in1+in0;
    // #10
    // in0 = 32'hffffffff;
    // in1 = 32'hfffffffd;
    // answer_left = in1+in0;
    // #100

    #1000000
    $display("The right rate is %f",right/count);
    $finish;
end

endmodule