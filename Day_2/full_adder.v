module  fa(input a,b,cin,output sum,carry_out);
assign sum = a^b^cin;
assign carry_out = (a&b)|(c&a)|(c&b);
endmodule
