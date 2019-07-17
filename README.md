# 数字电路实验教学

## 实现的功能  
本设计是为了摆脱传统的数电试验箱，避免进行复杂的实验时繁杂的布线导致出错，并且在两个不同功能实验的切换过程中需要长时间再次进行布线，增加了出错的概率，使得实验结果并不是那么可靠。我们通过使用pynq框架在pynq-z2上实现数电课程学习套件，使用Jupyter Notebook作为交互界面，能使得使用者积极参与其中。并且在各个功能间的切换快捷简单，平台复用性高，能快速的响应不同数电课程实验要求的切换，且在这期间不需要进行多余的排线操作，大大减小了出错几率。仅仅需要操作4个button就能实现与或非门，加法器与选择器等功能的控制，并且将结果通过BaseShiled_V2连接的Grove LED Bar来进行结果直观的输出显示。能为爱好数电实验的初学者提供一个快捷易上手的操作平台，并且有对于有兴趣的同学还可以对已有的基础数电实验代码进行修改来构建一些自己的数电实验来进行验证。  
## 文件目录结构

jupyter_notebook文件夹存放了相应的教案，adder文件夹存放了所有逻辑电路的verilog代码及仿真，mux41文件夹存放了4选1数据选择器的HLS工程  

```
D:.
├─adder
│  ├─adder
│  │  ├─adder.cache
│  │  ├─adder.hw
│  │  ├─adder.ip_user_files
│  │  ├─adder.sim
│  │  │  └─sim_1
│  │  └─adder.srcs
│  ├─multi_vote
│  │  ├─multi_vote.cache
│  │  ├─multi_vote.hw
│  │  ├─multi_vote.ip_user_files
│  │  ├─multi_vote.sim
│  │  └─multi_vote.srcs
│  └─selector
│      ├─.Xil
│      │  └─Vivado-10268-DESKTOP-D10UM1H
│      ├─selector.cache
│      │  └─compile_simlib
│      ├─selector.hw
│      ├─selector.ip_user_files
│      ├─selector.sim
│      │  └─sim_1
│      └─selector.srcs
├─jupyter_notebook
│  ├─pic1
│  ├─pic2
│  └─pic3
└─mux41
    └─mux41
        ├─.apc
        │  ├─.src
        │  └─.tb
        ├─.reference
        ├─.settings
        └─solution1
```
