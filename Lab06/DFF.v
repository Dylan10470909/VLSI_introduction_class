module DFF(clk,en,rst,D,Q);
input	 clk;
input	 en;
input   rst;
input	 [3:0]D;
output	 reg[3:0]Q;

//根據訊號結果觀察此區的運算方式
always @(posedge clk or negedge rst) 
begin 
   if(rst)     Q<=0;
   else  if(en)  Q<=D;
  
end 

endmodule


