# 创芯大赛相关
该文件夹中包含了

+ 本小组设计的代码(根目录下)

+ 代码相关的测试代码(tb文件夹下)

+ 用于生成verilog代码的py文件(py文件夹下)

  

## 主代码部分

+ Top.v为乘法器的顶层
  该模块包含了BOOTH.v, BOOTH0.v， RCA.v以及dadda.v四个模块

+ BOOTH.v与BOOTH0.v

  该模块用于BOOTH编码生成，部分积，两个不同的文件是因为对第一个部分积的编码部分进行了额外的处理，减少了编码器部分资源的消耗。

  BOOTH.v文件包含了BOOTH_encoder_1_7 模块（BOOTH_v2.v文件）以及Partial_generator模块（用于生成部分积）

  BOOTH0.v与BOOTH.v的区别在于BOOTH_encoder模块不同（用到的是BOOTH_0_v2.v文件）

+ RCA.v文件包含了HA.v、FA.v以及Last_FA.v

  该模块输出的[31:0]out为该乘法器最终的结果 

+ dadda.v文件包含了HA.v以及FA.v文件

  该Dadda Tree压缩过程包含了四个阶段，最终输出结果为2个32bit的输出out0以及out1

+ FA.v、HA.v以及AND_OR_NOT.v

  FA.v为全加器模块，HA.v为半加器模块，AND_OR_NOT.v为与或非门

## 测试代码

该测试代码文件夹中，针对上述提到所有功能性模块都编写了相应的testbench进行正确性验证。Top.v，RCA.v，BOOTH.v以及Dadda.v的正确性验证可以参考技术文档设计报告中第五部分的内容。

## py文件

+ BOOTH.py

  生成BOOTH.v相关代码

+ dadda.py

  生成dadda.v相关代码

+ gen_BOOTH.py

  生成BOOTH.v相关代码（偷懒用）

+ RCA.py

  生成RCA.v相关代码

+ time.py

  用于计算RCA以及Dadda Tree延时，作为关键路径的依据

