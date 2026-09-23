`timescale 1ns/1ns
module ADD_TB;

reg	 [3:0]	iA,iB,c_in;
reg	 [3:0] oSUM,c_out;
reg  [3:0]	gk,pk;
ADD aaa(iA,iB,oSUM,c_in,c_out,gk,pk);


initial begin

	iA = 4'b0100;
	iB = 4'b1001;
	c_in=1'b0;	
	#100
	$finish;

end
always#10
iB=iB+1;


initial begin
	$fsdbDumpfile("/home/109_course/IIC/C107110249/Design/Testing/ADD_TB.fsdb");
	$fsdbDumpvars(0,ADD_TB);
end
endmodule
