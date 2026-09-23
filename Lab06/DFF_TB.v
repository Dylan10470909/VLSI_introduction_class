module DFF_TB();

reg	 clk;
reg	 en;
reg     rst;
reg	 [3:0]D;
reg	 [3:0]Q;
DFF dut(clk,en,rst,D,Q);
      always #20 begin
                D=D+1;
             end
     always #20 begin 
         clk = ~clk; 
      end 

initial begin 
 clk =0;
 rst=1;
 en=0;
 D = 0;
 #100
 rst=0;
 D = 1;
 #100
 rst=0;
 en = 1;
 #100
 en = 0;
  #100
$finish;
end 

initial begin
//請同學改成自己的路徑
	$fsdbDumpfile("/home/110_course/IIC/C108110249/Desktop/Lab06/DFF_TB.fsdb");
	$fsdbDumpvars(0,DFF_TB);
end

endmodule 
