module Case(inA,inB,inC,inD,select,out);
input 	 	[3:0]	inA,inB,inC,inD;
input 	 	[2:0]   select;
output	    reg[3:0]   out;

always@(inA,inB,inC,inD,select)begin
        case(select) 
            2'b00 : out= inA;
            2'b01 : out= inB;
            2'b10 : out= inC;  
          default : out= inD;
        endcase
end
endmodule
