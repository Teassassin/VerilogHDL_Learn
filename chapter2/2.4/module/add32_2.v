// 将端口定义、数据类型说明放在模块声明中
module add32(input wire[31:0] in1,
            input wire[31:0] in2,
            output wire[31:0] out);

    assign out = in1 + in2;

endmodule