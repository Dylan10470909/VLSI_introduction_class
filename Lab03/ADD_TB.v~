`timescale 1ns/1ns
module ADD_TB;

reg	 	inA,inB;
reg	 [1:0]	oSUM;

ADD aaa(inA,inB,oSUM);

initial begin
	inA = 0;
	inB = 0;
	#10
	
	inA = 0;
	inB = 1;
	#10

	inA = 1;
	inB = 0;
	#10

	inA = 1;
	inB = 1;
	#10

	#50
	$finish;

end

initial begin
	$fsdbDumpfile("/home/110_course/IIC/C108110249/Desktop/Lab03/ADD_TB.fsdb");
	$fsdbDumpvars(0,ADD_TB);
end
endmodule
