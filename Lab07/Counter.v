module Counter(clk,en,rst,slt,out);
input	 clk;
input	 en;
input   rst;
input   slt;
output	 reg[3:0]out;

//根據訊號結果觀察此區的運算方式
always @(posedge clk or negedge rst) 
begin 
   if(!rst)     out<=(2'b00);
   else  if((en && slt)==2'b00)  
     out=out-2'b01;
   else  if((en && slt)==2'b01)  
     out=out+2'b01;
   else out<=(2'b00);
end 

endmodule


