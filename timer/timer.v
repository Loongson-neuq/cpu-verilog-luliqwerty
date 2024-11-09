module timer(
	input clk,				// 时钟信号
    input reset,			// 重置信号
    output reg [31:0] count		// 计时器输出
);
    always @(posedge clk or posedge reset) begin
        if (reset)
            count <= 0;
        else
            count <= count + 1;
    end
    
endmodule