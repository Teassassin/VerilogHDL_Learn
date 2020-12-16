// 可将端口定义与类型说明放在一条语句中
module add32(in1, in2, out);

    input wire[31:0] in1, in2; //此处
    output wire[31:0] out;

    assign out = in1 + in2;

endmodule