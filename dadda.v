module dadda_tree(
    input [19:0] pp0,
    input [18:0] pp1,
    input [18:0] pp2,
    input [18:0] pp3,
    input [18:0] pp4,
    input [18:0] pp5,
    input [18:0] pp6,
    input [17:0] pp7,
    output [31:0] out0,
    output [31:0] out1
)

// stage 1
wire [0:17] s1,c1;
//stage 2
wire [0:33] s2,c2;
//stage 3
wire [0:22] s3,c3;
//stage 4
wire [0:36] s4,c4;

//Stage 1 - reducing fom 8 to 6  
    HA h1(.A(pp0[12]),.B(pp1[10]),.C_out(c1[0]).S(s1[0]));
    FA f1(.A(pp0[13]),.B(pp1[11]),.C_in(pp2[9]).C_out(c1[1]).S(s1[1]));
    FA f2(.A(pp0[14]),.B(pp1[12]),.C_in(pp2[10]).C_out(c1[2]).S(s1[2]));
    HA h2(.A(pp3[8]),.B(pp4[6]),.C_out(c1[3]).S(s1[3]));
    FA f3(.A(pp0[15]),.B(pp1[13]),.C_in(pp2[11]).C_out(c1[4]).S(s1[4]));
    FA f4(.A(pp3[9]),.B(pp4[7]),.C_in(pp5[5]).C_out(c1[5]).S(s1[5]));
    FA f5(.A(pp0[16]),.B(pp1[14]),.C_in(pp2[12]).C_out(c1[6]).S(s1[6]));
    FA f6(.A(pp3[10]),.B(pp4[8]),.C_in(pp5[6]).C_out(c1[7]).S(s1[7]));
    FA f7(.A(pp0[17]),.B(pp1[15]),.C_in(pp2[13]).C_out(c1[8]).S(s1[8]));
    FA f8(.A(pp3[11]),.B(pp4[9]),.C_in(pp5[7]).C_out(c1[9]).S(s1[9]));
    FA f9(.A(pp0[18]),.B(pp1[16]),.C_in(pp2[14]).C_out(c1[10]).S(s1[10]));
    FA f10(.A(pp3[12]),.B(pp4[10]),.C_in(pp5[8]).C_out(c1[11]).S(s1[11]));
    FA f11(.A(pp0[19]),.B(pp1[17]),.C_in(pp2[15]).C_out(c1[12]).S(s1[12]));
    FA f12(.A(pp3[13]),.B(pp4[11]),.C_in(pp5[9]).C_out(c1[13]).S(s1[13]));
    FA f13(.A(pp1[18]),.B(pp2[16]),.C_in(pp3[14]).C_out(c1[14]).S(s1[14]));
    HA h3(.A(pp4[12]),.B(pp5[10]),.C_out(c1[15]).S(s1[15]));
    FA f14(.A(pp2[17]),.B(pp3[15]),.C_in(pp4[13]).C_out(c1[16]).S(s1[16]));
    HA h4(.A(pp2[18]),.B(pp3[16]),.C_out(c1[17]).S(s1[17]));

//Stage 2 - reducing fom 6 to 4

    HA h5(.A(pp0[8]),.B(pp1[6]),.C_out(c2[0]).S(s2[0]));
    FA f15(.A(pp0[9]),.B(pp1[7]),.C_in(pp2[5]).C_out(c2[1]).S(s2[1]));
    FA f16(.A(pp0[10]),.B(pp1[8]),.C_in(pp2[6]).C_out(c2[2]).S(s2[2]));
    HA h6(.A(pp3[4]),.B(pp4[2]),.C_out(c2[3]).S(s2[3]));
    FA f17(.A(pp0[11]),.B(pp1[9]),.C_in(pp2[7]).C_out(c2[4]).S(s2[4]));
    FA f18(.A(pp3[5]),.B(pp4[3]),.C_in(pp5[1]).C_out(c2[5]).S(s2[5]));
    FA f19(.A(pp2[8]),.B(pp3[6]),.C_in(pp4[4]).C_out(c2[6]).S(s2[6]));
    FA f20(.A(pp5[2]),.B(pp6[0]),.C_in(s1[0]).C_out(c2[7]).S(s2[7]));
    FA f21(.A(pp3[7]),.B(pp4[5]),.C_in(pp5[3]).C_out(c2[8]).S(s2[8]));
    FA f22(.A(pp6[1]),.B(c1[0]),.C_in(s1[1]).C_out(c2[9]).S(s2[9]));
    FA f23(.A(pp5[4]),.B(pp6[2]),.C_in(pp7[0]).C_out(c2[10]).S(s2[10]));
    FA f24(.A(c1[1]),.B(s1[2]),.C_in(s1[3]).C_out(c2[11]).S(s2[11]));
    FA f25(.A(pp6[3]),.B(pp7[1]),.C_in(c1[2]).C_out(c2[12]).S(s2[12]));
    FA f26(.A(c1[3]),.B(s1[4]),.C_in(s1[5]).C_out(c2[13]).S(s2[13]));
    FA f27(.A(pp6[4]),.B(pp7[2]),.C_in(c1[4]).C_out(c2[14]).S(s2[14]));
    FA f28(.A(c1[5]),.B(s1[6]),.C_in(s1[7]).C_out(c2[15]).S(s2[15]));
    FA f29(.A(pp6[5]),.B(pp7[3]),.C_in(c1[6]).C_out(c2[16]).S(s2[16]));
    FA f30(.A(c1[7]),.B(s1[8]),.C_in(s1[9]).C_out(c2[17]).S(s2[17]));
    FA f31(.A(pp6[6]),.B(pp7[4]),.C_in(c1[8]).C_out(c2[18]).S(s2[18]));
    FA f32(.A(c1[9]),.B(s1[10]),.C_in(s1[11]).C_out(c2[19]).S(s2[19]));
    FA f33(.A(pp6[7]),.B(pp7[5]),.C_in(c1[10]).C_out(c2[20]).S(s2[20]));
    FA f34(.A(c1[11]),.B(s1[12]),.C_in(s1[13]).C_out(c2[21]).S(s2[21]));
    FA f35(.A(pp6[8]),.B(pp7[6]),.C_in(c1[12]).C_out(c2[22]).S(s2[22]));
    FA f36(.A(c1[13]),.B(s1[14]),.C_in(s1[15]).C_out(c2[23]).S(s2[23]));
    FA f37(.A(pp5[11]),.B(pp6[9]),.C_in(pp7[7]).C_out(c2[24]).S(s2[24]));
    FA f38(.A(c1[14]),.B(c1[15]),.C_in(s1[16]).C_out(c2[25]).S(s2[25]));
    FA f39(.A(pp4[14]),.B(pp5[12]),.C_in(pp6[10]).C_out(c2[26]).S(s2[26]));
    FA f40(.A(pp7[8]),.B(c1[16]),.C_in(s1[17]).C_out(c2[27]).S(s2[27]));
    FA f41(.A(pp3[17]),.B(pp4[15]),.C_in(pp5[13]).C_out(c2[28]).S(s2[28]));
    FA f42(.A(pp6[11]),.B(pp7[9]),.C_in(c1[17]).C_out(c2[29]).S(s2[29]));
    FA f43(.A(pp3[18]),.B(pp4[16]),.C_in(pp5[14]).C_out(c2[30]).S(s2[30]));
    HA h7(.A(pp6[12]),.B(pp7[10]),.C_out(c2[31]).S(s2[31]));
    FA f44(.A(pp4[17]),.B(pp5[15]),.C_in(pp6[13]).C_out(c2[32]).S(s2[32]));
    HA h8(.A(pp4[18]),.B(pp5[16]),.C_out(c2[33]).S(s2[33]));
    
//Stage 3 - reducing fom 4 to 3

    HA h9(.A(pp0[6]),.B(pp1[4]),.C_out(c3[0]).S(s3[0]));
    FA f45(.A(pp0[7]),.B(pp1[5]),.C_in(pp2[3]).C_out(c3[1]).S(s3[1]));
    FA f46(.A(pp2[4]),.B(pp3[2]),.C_in(pp4[0]).C_out(c3[2]).S(s3[2]));
    FA f47(.A(pp3[3]),.B(pp4[1]),.C_in(c2[0]).C_out(c3[3]).S(s3[3]));
    FA f48(.A(pp5[0]),.B(c2[1]),.C_in(s2[2]).C_out(c3[4]).S(s3[4]));
    FA f49(.A(c2[2]),.B(c2[3]),.C_in(s2[4]).C_out(c3[5]).S(s3[5]));
    FA f50(.A(c2[4]),.B(c2[5]),.C_in(s2[6]).C_out(c3[6]).S(s3[6]));
    FA f51(.A(c2[6]),.B(c2[7]),.C_in(s2[8]).C_out(c3[7]).S(s3[7]));
    FA f52(.A(c2[8]),.B(c2[9]),.C_in(s2[10]).C_out(c3[8]).S(s3[8]));
    FA f53(.A(c2[10]),.B(c2[11]),.C_in(s2[12]).C_out(c3[9]).S(s3[9]));
    FA f54(.A(c2[12]),.B(c2[13]),.C_in(s2[14]).C_out(c3[10]).S(s3[10]));
    FA f55(.A(c2[14]),.B(c2[15]),.C_in(s2[16]).C_out(c3[11]).S(s3[11]));
    FA f56(.A(c2[16]),.B(c2[17]),.C_in(s2[18]).C_out(c3[12]).S(s3[12]));
    FA f57(.A(c2[18]),.B(c2[19]),.C_in(s2[20]).C_out(c3[13]).S(s3[13]));
    FA f58(.A(c2[20]),.B(c2[21]),.C_in(s2[22]).C_out(c3[14]).S(s3[14]));
    FA f59(.A(c2[22]),.B(c2[23]),.C_in(s2[24]).C_out(c3[15]).S(s3[15]));
    FA f60(.A(c2[24]),.B(c2[25]),.C_in(s2[26]).C_out(c3[16]).S(s3[16]));
    FA f61(.A(c2[26]),.B(c2[27]),.C_in(s2[28]).C_out(c3[17]).S(s3[17]));
    FA f62(.A(c2[28]),.B(c2[29]),.C_in(s2[30]).C_out(c3[18]).S(s3[18]));
    FA f63(.A(pp7[11]),.B(c2[30]),.C_in(c2[31]).C_out(c3[19]).S(s3[19]));
    FA f64(.A(pp6[14]),.B(pp7[12]),.C_in(c2[32]).C_out(c3[20]).S(s3[20]));
    FA f65(.A(pp5[17]),.B(pp6[15]),.C_in(pp7[13]).C_out(c3[21]).S(s3[21]));
    HA h10(.A(pp5[18]),.B(pp6[16]),.C_out(c3[22]).S(s3[22]));

//Stage 4 - reducing fom 3 to 2

    HA h11(.A(pp0[4]),.B(pp1[2]),.C_out(c4[0]).S(s4[0]));
    FA f66(.A(pp0[5]),.B(pp1[3]),.C_in(pp2[1]).C_out(c4[1]).S(s4[1]));
    FA f67(.A(pp2[2]),.B(pp3[0]),.C_in(s3[0]).C_out(c4[2]).S(s4[2]));
    FA f68(.A(pp3[1]),.B(c3[0]),.C_in(s3[1]).C_out(c4[3]).S(s4[3]));
    FA f69(.A(s2[0]),.B(c3[1]),.C_in(s3[2]).C_out(c4[4]).S(s4[4]));
    FA f70(.A(s2[1]),.B(c3[2]),.C_in(s3[3]).C_out(c4[5]).S(s4[5]));
    FA f71(.A(s2[3]),.B(c3[3]),.C_in(s3[4]).C_out(c4[6]).S(s4[6]));
    FA f72(.A(s2[5]),.B(c3[4]),.C_in(s3[5]).C_out(c4[7]).S(s4[7]));
    FA f73(.A(s2[7]),.B(c3[5]),.C_in(s3[6]).C_out(c4[8]).S(s4[8]));
    FA f74(.A(s2[9]),.B(c3[6]),.C_in(s3[7]).C_out(c4[9]).S(s4[9]));
    FA f75(.A(s2[11]),.B(c3[7]),.C_in(s3[8]).C_out(c4[10]).S(s4[10]));
    FA f76(.A(s2[13]),.B(c3[8]),.C_in(s3[9]).C_out(c4[11]).S(s4[11]));
    FA f77(.A(s2[15]),.B(c3[9]),.C_in(s3[10]).C_out(c4[12]).S(s4[12]));
    FA f78(.A(s2[17]),.B(c3[10]),.C_in(s3[11]).C_out(c4[13]).S(s4[13]));
    FA f79(.A(s2[19]),.B(c3[11]),.C_in(s3[12]).C_out(c4[14]).S(s4[14]));
    FA f80(.A(s2[21]),.B(c3[12]),.C_in(s3[13]).C_out(c4[15]).S(s4[15]));
    FA f81(.A(s2[23]),.B(c3[13]),.C_in(s3[14]).C_out(c4[16]).S(s4[16]));
    FA f82(.A(s2[25]),.B(c3[14]),.C_in(s3[15]).C_out(c4[17]).S(s4[17]));
    FA f83(.A(s2[27]),.B(c3[15]),.C_in(s3[16]).C_out(c4[18]).S(s4[18]));
    FA f84(.A(s2[29]),.B(c3[16]),.C_in(s3[17]).C_out(c4[19]).S(s4[19]));
    FA f85(.A(s2[31]),.B(c3[17]),.C_in(s3[18]).C_out(c4[20]).S(s4[20]));
    FA f86(.A(s2[32]),.B(c3[18]),.C_in(s3[19]).C_out(c4[21]).S(s4[21]));
    FA f87(.A(s2[33]),.B(c3[19]),.C_in(s3[20]).C_out(c4[22]).S(s4[22]));
    FA f88(.A(c2[33]),.B(c3[20]),.C_in(s3[21]).C_out(c4[23]).S(s4[23]));
    FA f89(.A(pp7[14]),.B(c3[21]),.C_in(s3[22]).C_out(c4[24]).S(s4[24]));
    FA f90(.A(pp6[17]),.B(pp7[15]),.C_in(c3[22]).C_out(c4[25]).S(s4[25]));
    HA h12(.A(pp6[18]),.B(pp7[16]),.C_out(c4[26]).S(s4[26]));

assign out0 = {pp7[17],c4[25],c4[24],c4[23],c4[22],c4[21],c4[20],c4[19],c4[18],c4[17],c4[16],c4[15],c4[14],c4[13],c4[12],c4[11],c4[10],c4[9],c4[8],c4[7],c4[6],c4[5],c4[4],c4[3],c4[2],c4[1],c4[0],pp2[0],pp0[3],pp0[2],pp0[1],pp0[0]};
assign out1 = {c4[26],s4[26],s4[25],s4[24],s4[23],s4[22],s4[21],s4[20],s4[19],s4[18],s4[17],s4[16],s4[15],s4[14],s4[13],s4[12],s4[11],s4[10],s4[9],s4[8],s4[7],s4[6],s4[5],s4[4],s4[3],s4[2],s4[1],s4[0],pp1[1],pp1[0],2'b0};
endmodule 