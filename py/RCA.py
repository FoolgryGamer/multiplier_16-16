index = 0

for i in range(2,31):
    print("FA f{}(.A(in0[{}]),.B(in1[{}]),.C_in(c[{}]),.C_out(c[{}]),.S(s[{}]));".format(i-1,i,i,i-1,i,i))
    
# for i in range(31,-1,-1):
#     print("s[{}],".format(i),end='')