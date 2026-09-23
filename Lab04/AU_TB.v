`timescale 1ns/1ns
module AU_TB;
reg	 [3:0]inA;
reg	 [3:0]inB;
reg	 [3:0]out1;
reg	 [3:0]out2;
reg	 [3:0]out3;

AU U_AU(inA,inB,out1,out2,out3);

initial begin
//給輸入輸出一個初始值，請觀察訊號0~10ns
	inA = 9;
	inB = 4;
	#10

	#50
	$finish;

end
//根據訊號結果觀察此區的運算方式
always #10 begin
	inA	=	inA + 1;
	inB	=	inB + 1;
end

initial begin
//請同學改成自己的路徑
	$fsdbDumpfile("/home/110_course/IIC/C108110249/Desktop/Lab04/AU_TB.fsdb");
	$fsdbDumpvars(0,AU_TB);
end
endmodule
