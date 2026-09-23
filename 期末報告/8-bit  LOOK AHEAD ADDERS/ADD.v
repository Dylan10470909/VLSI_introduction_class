module ADD (iA,iB,oSUM,c_in,c_out);
input 	 	[3:0]	iA,iB,c_in;
output	 	[3:0]	oSUM,c_out;
wire [3:0] gk;
wire [3:0] pk;
wire [4:0] c;		
        
		
		
	assign gk = iA&iB;
    assign pk = iA^iB;
        
		
    assign c[0] = c_in;
	assign c[1] = gk[0]|(pk[0]&c_in);
	assign c[2] = gk[1]|(pk[1]&gk[0])|(pk[1]&pk[0]&c_in);
	assign c[3] = gk[2]|(pk[2]&gk[1])|(pk[2]&pk[1]&gk[0])|(pk[2]&pk[1]&pk[0]&c_in);
	assign c[4] = gk[3]|(pk[3]&gk[2])|(pk[3]&pk[2]&gk[1])|(pk[3]&pk[2]&pk[1]&gk[0])|(pk[3]&pk[2]&pk[1]&pk[0]&c_in);
	
	assign oSUM = iA^iB^c[3:0];
	assign c_out = c[4];

endmodule
