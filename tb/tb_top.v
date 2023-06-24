module tb;

parameter test_mode = 2'b11;
// mode 00 random test
// mode 01 A=0xffff,B=0xffff
// mode 10 A=0xffff,B=random
// mode 11 A=random,B=0xffff

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
    if(test_mode == 2'b00) begin
        in0 = $random();
        in1 = $random();
    end
    // else if(test_mode == 2'b01) begin
    //     ;
    // end
    else if(test_mode == 2'b10) begin
        in0 = $random();
    end
    else if(test_mode == 2'b11) begin
        in1 = $random();
    end
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
    if(test_mode == 2'b01) begin
        in0 = 16'hffff;
        in1 = 16'hffff;
    end
    else if(test_mode == 2'b10) begin
        in1 = 16'hffff;
    end
    else if(test_mode == 2'b11) begin
        in0 = 16'hffff;
    end
    right = 0;
    answer_left = 0;
    if(test_mode == 2'b00) begin
        #1000000;
    end
    else if(test_mode == 2'b01) begin
        #150;
    end
    else if(test_mode == 2'b10) begin
        #1000000;
    end
    else if(test_mode == 2'b11) begin
        #1000000;
    end
    $display("The right rate is %f",right/count);
    $finish;
end

endmodule