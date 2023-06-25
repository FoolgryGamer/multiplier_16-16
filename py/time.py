import matplotlib.pyplot as plt
num = [0]*31
for i in range(31):
    if i == 0:
        num[i] = num[i] + 8
    elif i == 1:
        num[i] = num[0] + 8
    else:
        num[i] = num[i-1] + 12
print(num)

dadda = [0]*16
for i in range(31):
    if i == 0 or i == 1:
        dadda[i] = 0
    elif i == 2 or i == 3:
        dadda[i] = 12
    elif i == 4 or i == 5:
        dadda[i] = 24
    elif i == 6:
        dadda[i] = 48
    elif i == 7:
        dadda[i] = 56
    elif i == 8:
        dadda[i] = 72
    elif i == 9:
        dadda[i] = 72
    elif i == 10:
        dadda[i] = 72 # 
    elif i == 11:
        dadda[i] = 72
    elif i == 12:
        dadda[i] = 84 #
    elif i == 13:
        dadda[i] = 84#
    elif i == 14:
        dadda[i] = 84#
    elif i == 15:
        dadda[i] = 84
print(dadda)
ran = [i for i in range(31)]
j = [j for j in range(16)]
plt.rcParams['font.sans-serif']=['SimHei']
plt.plot(ran,num)
plt.plot(j,dadda)
plt.xlabel("进位链的长度")
plt.ylabel("性能代价评估得分")
plt.show()