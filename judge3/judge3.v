module judge3(          //当多数人同意时输出1
    input a,b,c,
    output out
);
    
    assign out = (a & b) | (b & c) | (a & b); // 超过两个输入1
    
endmodule