module add32(in1, in2, out);    // 模块声明

    input in1, in2;             // 端口定义，此处是输入端口
    output out;                 // 端口定义，此处是输出端口

    wire[31:0] in1, in2, out;   // 数据类型说明，此处都是wire型

    assign out = in1 + in2;     // 逻辑功能描述

endmodule