// Code your testbench here
// or browse Examples
module tb();
reg clk,rst_n;
wire [3:0]gray_code,binary;
N_gray_code uut (.clk(clk),.rst_n(rst_n),.gray_code(gray_code),.binary(binary));
always #5 clk=~clk;
initial begin
     clk=0; rst_n=0;#10;
     rst_n=1;#100;
     $finish;
end
initial begin $monitor("time=%0t||clk=%0b||rst_n=%0b||gray_code=%0b||binary=%0b",$time,clk,rst_n,gray_code,binary);
  $dumpfile("dump.vcd"); $dumpvars;
end
endmodule
