// Code your design here
module N_gray_code#(parameter n =4)(input clk,rst_n,output [n-1:0]gray_code,binary);
reg [n-1:0]gr,bin;
always @(posedge clk) begin
    if(!rst_n) begin
        bin<={n{1'b0}};
    end
    else begin
      bin<=(bin+1);
    end   
end
  always@(*)begin
    gr = bin^(bin>>1);
  end
assign gray_code = gr;
assign binary = bin;
endmodule
