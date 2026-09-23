module Fdiv(rst,clk,o_clk);

input 	 	rst;
input	 	clk;
output reg    o_clk;
reg	cnt;  

always@(posedge clk or negedge rst)
 begin
   if(!rst)   
     cnt<=0;
   else if(cnt==1)
      cnt<=0;
   else 
     cnt <=cnt+1;
 end

always@(posedge clk or negedge rst)
 begin
    if(!rst)     
      o_clk<=0;
    else if(cnt<1)
      o_clk=0;
    else 
      o_clk=1;
 end


endmodule
