`timescale 1ns / 1ps

module tb_timer;
    reg clk;
    reg reset;
    wire [31:0] count;
    
    timer uut(
        .clk(clk),
        .reset(reset),
        .count(count)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end
    
    initial begin
        // 初始化计数器
        reset = 1;
        #10;
        reset = 0;
        
        // 观察一段时间的计数值
        #100;
        
        // 触发重置
        reset = 1;
        #10;
        reset = 0;
        
        $finish;
    end
    
endmodule