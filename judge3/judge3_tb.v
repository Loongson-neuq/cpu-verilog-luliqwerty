/*
testbench激励文件

测试点应至少包括：
...
{a,b,c} = {0,0,0};
#10
{a,b,c} = {0,0,1};
#10
{a,b,c} = {0,1,1};
#10
{a,b,c} = {1,1,1};
#10
$finish;

*/

`timescale 1ns/1ps

module judge3_tb;

reg a,b,c;
wire y;

judge3 dut(
    .a(a),
    .b(b),
    .c(c),
    .out(y)
);

initial begin
    
    a = 0;
    b = 0;
    c = 0;
end
    always #10 begin begin_name
        {a,b,c} = {a,b,c} + 1'b1;
    end

endmodule