`timescale 1ns/1ns
module case_TB;
reg	 [3:0]inA,inB,inC,inD;
reg	 [2:0]select;
reg	 [3:0]out;

Case U_AU(inA,inB,inC,inD,select,out);

initial begin
//給輸入輸出一個初始值，請觀察訊號0~10ns
	inA = 0;
	inB = 1;
       inC = 2;
       inD = 3;
       select=2'b00;
        #10
	select=2'b01;
        #10
        select=2'b10;
        #10
	select=2'b11;
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
	$fsdbDumpfile("/home/110_course/IIC/C108110249/Desktop/Lab05_case/case_TB.fsdb");
	$fsdbDumpvars(0,case_TB);
end
endmodule
