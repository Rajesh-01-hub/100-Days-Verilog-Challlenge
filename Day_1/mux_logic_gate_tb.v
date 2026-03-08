module mux_logic_tb();
  reg a,b;
  wire and_g,or_g,nand_g,nor_g,xor_g,xnor_g;
  mux_logic uut (.a(a),.b(b),.and_g(and_g),.or_g(or_g),.nand_g(nand_g),.nor_g(nor_g),.xor_g(xor_g),.xnor_g(xnor_g));
  integer i;
  initial begin
    a=0; b=0; #5;
    $display("time=%0t||a=%0b||b=%0b||and_g=%0b||or_g=%0b||nand_g=%0b||nor_g=%0b||xor_g=%0b||xnor_g=%0b",$time,a,b,and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
    for(i=1;i<4;i=i+1) begin
      #5;{a,b}=i;
      #5;$display("time=%0t||a=%0b||b=%0b||and_g=%0b||or_g=%0b||nand_g=%0b||nor_g=%0b||xor_g=%0b||xnor_g=%0b",$time,a,b,and_g,or_g,nand_g,nor_g,xor_g,xnor_g);
    end
  end
endmodule
