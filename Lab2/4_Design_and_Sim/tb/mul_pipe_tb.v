//`timescale 1ns

module mul_pipe_tb ();

   // signals
   wire CLK_s;
   wire RST_n_s;
   wire [31:0] A_s;
   wire [31:0] B_s;
   wire [31:0] Z_s;
   wire END_SIM_s;
   // port map
   clk_gen CG(
		  .END_SIM(END_SIM_s),
  	      .CLK(CLK_s),
	      .RST_n(RST_n_s));

   mul_pipe_tb_in TB_IN(
	     .CLK(CLK_s),
	     .RST_n(RST_n_s),
		 .A(A_s),
		 .B(B_s),
		 .END_SIM(END_SIM_s));

   mul_pipe_tb_out TB_OUT( 
		 .CLK(CLK_s),
	     .RST_n(RST_n_s),
	     .Z(Z_s),
         .A(A_s),
         .B(B_s));

   fpmul_pipeline UUT(
	    .FP_A(A_s),
		.FP_B(B_s),
		.clk(CLK_s),
		.FP_Z(Z_s));
endmodule

