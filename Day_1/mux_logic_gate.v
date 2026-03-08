//=========synthesisable pure combinational manner=========//
module mux_logic(
input a,b,
output  and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
assign and_g = a ? b:1'b0;
assign or_g  = a ? 1'b1:b;
assign nand_g = a ? (~b):1'b1;
assign nor_g = a? 1'b0:(~b);
assign xor_g = a? (~b):b;
assign xnor_g = a? b:(~b);
endmodule
//====same manner output excuited========//
// --- design in synthesisable manner happen in latch for case statements---//
//--- in synthesis manner happen latches and its make earse data pervious data when sel other logic.-------//
module mux_logic(input a,b,
input [2:0]sel,
output reg and_g,or_g,nand_g,nor_g,xor_g,xnor_g,er,
output [6:0]y);
always@(*)begin
er=1'b0;
case(sel)
3'b000 : begin
  		and_g = a ? b:1'b0;
       {er,xnor_g,xor_g,nor_g,nand_g,or_g}='b0;
		end
3'b001 : begin
  		 or_g  = a ? 1'b1:b;
         {er,xnor_g,xor_g,nor_g,nand_g,and_g}='b0;
		end
3'b010 : begin
  		nand_g = a ? (~b):1'b1;
         {er,xnor_g,xor_g,nor_g,or_g,and_g}='b0;
		end
3'b011 : begin
  		nor_g = a? 1'b0:(~b);
         {er,xnor_g,xor_g,nand_g,or_g,and_g}='b0;
		end
3'b100 : begin
  		xor_g = a? (~b):b;
        {er,xnor_g,nor_g,nand_g,or_g,and_g}='b0;
		end
3'b101 : begin
  		xnor_g = a? b:(~b);
         {er,xor_g,nor_g,nand_g,or_g,and_g}='b0;
		end
default: er =1'b1;
endcase
end
  assign y ={er,xnor_g,xor_g,nor_g,nand_g,or_g,and_g};
endmodule
