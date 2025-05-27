module structural(output out_and,out_or,out_nand,out_nor,out_xor,out_xnor,out_not, input a ,b );
  and a1(out_and,a,b);
  or o1(out_or,a,b);
  nand n1(out_nand,a,b);
  nor n2(out_nor,a,b);
  xor x1(out_xor,a,b);
  xnor x2(out_xnor,a,b);
  not n3(out_not,a);
  endmodule
  
