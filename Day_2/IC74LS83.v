module LS83(input [3:0]a,b,input  cin,output [3:0]sum,output cout);
wire [4:0]c;
assign c[0]=cin;
genvar i;
generate 
for(i=0;i<4;i=i+1) begin:add_loop
fa h1(.a(a[i]),.b(b[i]),.cin(c[i]),.sum(sum[i]),.carry_out(c[i+1]));
end
 endgenerate
endmodule
