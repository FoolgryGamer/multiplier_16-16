module RCA(
    input [31:0] in0,
    input [31:0] in1,
    output [31:0] out
);
wire [0:31] c,s;

HA h1(.A(in0[0]),.B(in1[0]),.C_out(c[0]),.S(s[0]));
HA h2(.A(in0[1]),.B(c[0]),.C_out(c[1]),.S(s[1]));

FA f1(.A(in0[2]),.B(in1[2]),.C_in(c[1]),.C_out(c[2]),.S(s[2]));
FA f2(.A(in0[3]),.B(in1[3]),.C_in(c[2]),.C_out(c[3]),.S(s[3]));
FA f3(.A(in0[4]),.B(in1[4]),.C_in(c[3]),.C_out(c[4]),.S(s[4]));
FA f4(.A(in0[5]),.B(in1[5]),.C_in(c[4]),.C_out(c[5]),.S(s[5]));
FA f5(.A(in0[6]),.B(in1[6]),.C_in(c[5]),.C_out(c[6]),.S(s[6]));
FA f6(.A(in0[7]),.B(in1[7]),.C_in(c[6]),.C_out(c[7]),.S(s[7]));
FA f7(.A(in0[8]),.B(in1[8]),.C_in(c[7]),.C_out(c[8]),.S(s[8]));
FA f8(.A(in0[9]),.B(in1[9]),.C_in(c[8]),.C_out(c[9]),.S(s[9]));
FA f9(.A(in0[10]),.B(in1[10]),.C_in(c[9]),.C_out(c[10]),.S(s[10]));
FA f10(.A(in0[11]),.B(in1[11]),.C_in(c[10]),.C_out(c[11]),.S(s[11]));
FA f11(.A(in0[12]),.B(in1[12]),.C_in(c[11]),.C_out(c[12]),.S(s[12]));
FA f12(.A(in0[13]),.B(in1[13]),.C_in(c[12]),.C_out(c[13]),.S(s[13]));
FA f13(.A(in0[14]),.B(in1[14]),.C_in(c[13]),.C_out(c[14]),.S(s[14]));
FA f14(.A(in0[15]),.B(in1[15]),.C_in(c[14]),.C_out(c[15]),.S(s[15]));
FA f15(.A(in0[16]),.B(in1[16]),.C_in(c[15]),.C_out(c[16]),.S(s[16]));
FA f16(.A(in0[17]),.B(in1[17]),.C_in(c[16]),.C_out(c[17]),.S(s[17]));
FA f17(.A(in0[18]),.B(in1[18]),.C_in(c[17]),.C_out(c[18]),.S(s[18]));
FA f18(.A(in0[19]),.B(in1[19]),.C_in(c[18]),.C_out(c[19]),.S(s[19]));
FA f19(.A(in0[20]),.B(in1[20]),.C_in(c[19]),.C_out(c[20]),.S(s[20]));
FA f20(.A(in0[21]),.B(in1[21]),.C_in(c[20]),.C_out(c[21]),.S(s[21]));
FA f21(.A(in0[22]),.B(in1[22]),.C_in(c[21]),.C_out(c[22]),.S(s[22]));
FA f22(.A(in0[23]),.B(in1[23]),.C_in(c[22]),.C_out(c[23]),.S(s[23]));
FA f23(.A(in0[24]),.B(in1[24]),.C_in(c[23]),.C_out(c[24]),.S(s[24]));
FA f24(.A(in0[25]),.B(in1[25]),.C_in(c[24]),.C_out(c[25]),.S(s[25]));
FA f25(.A(in0[26]),.B(in1[26]),.C_in(c[25]),.C_out(c[26]),.S(s[26]));
FA f26(.A(in0[27]),.B(in1[27]),.C_in(c[26]),.C_out(c[27]),.S(s[27]));
FA f27(.A(in0[28]),.B(in1[28]),.C_in(c[27]),.C_out(c[28]),.S(s[28]));
FA f28(.A(in0[29]),.B(in1[29]),.C_in(c[28]),.C_out(c[29]),.S(s[29]));
FA f29(.A(in0[30]),.B(in1[30]),.C_in(c[29]),.C_out(c[30]),.S(s[30]));

Last_FA f30(.A(in0[31]),.B(in1[31]),.C_in(c[30]),.S(s[31]));

assign out = {s[31],s[30],s[29],s[28],s[27],s[26],s[25],s[24],s[23],s[22],s[21],s[20],s[19],s[18],s[17],s[16],s[15],s[14],s[13],s[12],s[11],s[10],s[9],s[8],s[7],s[6],s[5],s[4],s[3],s[2],s[1],s[0]};

endmodule