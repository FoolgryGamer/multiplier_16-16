col = [0]*32

for i in range(8):
    if i == 7:
        for j in range(18):
            col[2*i+j] += 1
    elif i == 0:
        for j in range(20):
            col[2*i+j] += 1
    else:
        for j in range(19):
            col[2*i+j] += 1
col = col[::-1]

sum = 0
for i in range(4):
    for j in range(32):
        if col[j] >= 3:
            item = col[j] // 3
            col[j-1] +=  item
            col[j] = col[j] % 3 + item
            sum += item
    print(col)
    print(sum)