module pc_reg(

    input wire clk,
    input wire rst,

    output reg[5:0] pc,
    output reg ce

);

    always @ (posedge clk) begin    // 在始终信号上升沿触发
        if (rst == 1'b1) begin
            ce <= 1'b0;             // 复位信号有效的时候，指令存储器使能信号无效
        end else begin
            ce <= 1'b1;             // 复位信号无效的时候，指令存储器使能信号有效
        end
    end

    always @ (posedge clk) begin    // 上升沿触发
        if (ce == 1'b0) begin
            pc <= 6'h00;            // 指令存储器使能信号无效的时候，pc保持为0
        end else begin
            pc <= pc + 1'b1;        // 指令存储器使能信号有效的时候，pc在每个时钟加1
        end
    end

endmodule