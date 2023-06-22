part =2
if part == 0: #generate BOOTH0
    for i in range(8):
        if i == 0:
            print("BOOTH0 B0 (.B_i2(B[{}]),.B_i1(B[{}]),.B_i0(0),.A(A),.neg(neg[0]),.P(pp{}));".format(i*2+1,i*2,i))
        else:
            print("BOOTH_1_7 B{} (.B_i2(B[{}]),.B_i1(B[{}]),.B_i0(B[{}]),.A(A),.neg(neg[{}]),.P(pp{}));".format(i,i*2+1,i*2,i*2-1,i,i))
elif part == 1: #generate sign
    for i in range(7,-1,-1):
        print("neg[{}],".format(i),end = "")
elif part == 2:
    for i in range(8):
        print("not (es[{}],pp{}[16]);".format(i,i))