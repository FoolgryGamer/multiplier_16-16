num = [0]*32
FA = 0
HA = 0
stage = [13,9,6,4,3,2]
item = [[] for _ in range(32)]
# for i in range(32):
#     if i >= 16:
#         num[i] = 31-i
#     else:
#         num[i] = i+1
# for i in range(32):
#     if i < 15:
#         num[i] = i//3 + 1
#     elif i >= 15 and i <= 17:
#         num[i] = 6
#     else:
#         num[i] = (32-i) // 3 + 1
for i in range(8):
    if i == 7:
        for j in range(18):
            num[2*i+j] += 1
            item[2*i+j].append("pp{}[{}]".format(i,j))
    elif i == 0:
        for j in range(20):
            num[2*i+j] += 1
            item[2*i+j].append("pp{}[{}]".format(i,j))
    else:
        for j in range(19):
            num[2*i+j] += 1
            item[2*i+j].append("pp{}[{}]".format(i,j))
for j in range(8):
    num[2*j] += 1
    item[2*j].append("sign[{}]".format(j))
print("origin num is")
print(num)
for i in range(32):
    print(item[i])
# stage 1
for j in range(6):
    index = 0
    for i in range(31):
        if num[i] > stage[j]:
            while num[i] > stage[j]:
                if num[i] >= stage[j] + 2:
                    num[i] = num[i] - 2
                    num[i+1] = num[i+1] + 1
                    FA += 1
                    A = item[i].pop(0)
                    B = item[i].pop(0)
                    C_in = item[i].pop(0)
                    c = "c{}[{}]".format(j-1,index)
                    s = "s{}[{}]".format(j-1,index)
                    print("FA f{}(.A({}),.B({}),.C_in({}),.C_out({}),.S({}));".format(FA,A,B,C_in,c,s))
                    item[i+1].append(c)
                    item[i].append(s)
                    index += 1
                else:
                    num[i] = num[i] - 1
                    num[i+1] = num[i+1] + 1
                    HA += 1
                    A = item[i].pop(0)
                    B = item[i].pop(0)
                    c = "c{}[{}]".format(j-1,index)
                    s = "s{}[{}]".format(j-1,index)
                    print("HA h{}(.A({}),.B({}),.C_out({}),.S({}));".format(HA,A,B,c,s))
                    item[i+1].append(c)
                    item[i].append(s)
                    index += 1
    print("the {}th num is {}".format(j,num))
    print("the number of HA is {}, the number of FA is {}".format(HA,FA))
    
for i in range(32):
    print(item[i])
c = ""
s = ""
for i in range(31,-1,-1):
    if i == 1:
        c += item[i][0]+","
    else:
        c += item[i][0]+","
        s += item[i][1]+","

print(c)
print(s)