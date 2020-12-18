module rom(

    input wire ce,
    input wire[5:0] addr,
    output reg[31:0] inst

);

    reg[31:0] rom[63:0];        // 使用二维向量定义存储器，深度是64，每个元素的宽度是32

    always @ (*) begin
        if (ce == 1'b0) begin
            inst <= 32'h0;      // 使能信号无效时，给出的数据是0
        end else begin
            inst <= rom[addr];  // 使能信号有效时，给出地址addr对应的指令
        end
    end

endmodule