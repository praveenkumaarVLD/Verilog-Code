module basicgates_tb;
  wire out_and,out_or,out_nand,out_nor,out_xor,out_xnor,out_not;
  reg a,b;
        dataflow dut(.out_and(out_and),.out_or(out_or),.out_nand(out_nand),.out_nor(out_nor),.out_xor(out_xor),.out_xnor(out_xnor),.out_not(out_not),.a(a),.b(b));
        initial begin
                a=1'b0;b=1'b0;
                #10 a=1'b0;b=1'b1;
                #10 a=1'b1;b=1'b0;
                #10 a=1'b1;b=1'b1;
                #50 $finish;
        end
        always&(*)
                begin
                        $display("Inputs:a=%b b%b ,Outputs:And=%b Or=%b Nand=%b Nor=%b Xor=%b Xnor=%b Not=%b ",a,b,out_and,out_or,out_nand,out_nor,out_xor,out_xnor,out_not);
                end
endmodule
                
