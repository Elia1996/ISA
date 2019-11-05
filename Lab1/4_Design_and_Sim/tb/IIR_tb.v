//`timescale 1ns

module IIR_tb ();

   // signals
   wire CLK_s;
   wire RST_n_s;
   wire [11:0] DIN_s;
   wire VIN_s;
   wire [11:0] DOUT_s;
   wire VOUT_s;
   wire END_SIM_s;
   // port map
   clk_gen CG(.END_SIM(END_SIM_s),
  	      .CLK(CLK_s),
	      .RST_n(RST_n_s));

   IIR_tb_in TB_IN(
	     .CLK(CLK_s),
	     .RST_n(RST_n_s),
		 .VIN(VIN_s),
		 .DIN(DIN_s),
		 .END_SIM(END_SIM_s));

   IIR_filter_optimized UUT(.CLK(CLK_s),
	     .RST_n(RST_n_s),
	     .DIN(DIN_s),
         .VIN(VIN_s),
         .DOUT(DOUT_s),
         .VOUT(VOUT_s));

   IIR_tb_out TB_OUT(
	    .CLK(CLK_s),
		.RST_n(RST_n_s),
		.VOUT(VOUT_s),
		.DOUT(DOUT_s),
		//Vin e Din del filtro sono prese direttamente dal
		// testbench precendente.
		.VIN(VIN_s),
		.DIN(DIN_s));
endmodule

