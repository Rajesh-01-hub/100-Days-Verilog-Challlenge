

module add_sub(input [15:0]a,b,input mode,output [15:0]sum,output carry_out);
wire [3:0]c;
LS83 g1(.a(a[3:0]),.b(b[3:0]^{4{mode}}),.cin(mode),.sum(sum[3:0]),.cout(c[0]));
LS83 g2(.a(a[7:4]),.b(b[7:4]^{4{mode}}),.cin(c[0]),.sum(sum[7:4]),.cout(c[1]));
LS83 g3(.a(a[11:8]),.b(b[11:8]^{4{mode}}),.cin(c[1]),.sum(sum[11:8]),.cout(c[2]));
LS83 g1(.a(a[15:12]),.b(b[15:12]^{4{mode}}),.cin(c[2]),.sum(sum[15:12]),.cout(c[3]));
assign carry_out = c[3];
endmodule
