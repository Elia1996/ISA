//`timescale 1ns

module IIR_tb ();

   // signals
   wire CLK_s;
   wire RST_n_s;
   wire [11:0] DIN_s;
   wire [11:0]    v_s;
   wire [11:0]   v1_s;
   wire [11:0]   v2_s;
   wire [11:0] v1a0_s;
   wire [11:0] v2a1_s;
   wire [11:0] v1b1_s;
   wire [11:0] v2b2_s;
   wire [11:0]  vb0_s;
   wire VIN_s;
   wire [11:0] DOUT_s;
   wire VOUT_s;
   wire END_SIM_s;
   // port map
   clk_gen CG(.END_SIM(END_SIM_s),
  	      .CLK(CLK_s),
	      .RST_n(RST_n_s));

   IIR_tb_sn TB_IN(
	     .CLK(CLK_s),
	     .RST_n(RST_n_s),
		 .VIN(VIN_s),
		 .DIN(DIN_s),
		 .END_SIM(END_SIM_s));

   IIR_filter UUT(.CLK(CLK_s),
	     .RST_n(RST_n_s),
	     .DIN(DIN_s),
         .VIN(VIN_s),
         .DOUT(DOUT_s),
         .VOUT(VOUT_s),
		 .v(v_s),
	     .v1(v1_s),
	     .v2(v2_s),
	 	 .v1a0(v1a0_s),
		 .v2a1(v2a1_s),
	 	 .v1b1(v1b1_s),
	 	 .v2b2(v2b2_s),
	 	 .vb0(vb0_s));

   IIR_tb_out TB_OUT(
	    .CLK(CLK_s),
		.RST_n(RST_n_s),
		.VOUT(VOUT_s),
		.DOUT(DOUT_s),
		//Vin e Din del filtro sono prese direttamente dal
		// testbench precendente.
		.VIN(VIN_s),
		.DIN(DIN_s),
		.v(v_s),
	    .v1(v1_s),
	    .v2(v2_s),  
	 	 .v1a0(v1a0_s),
		 .v2a1(v2a1_s),
	 	 .v1b1(v1b1_s),
	 	 .v2b2(v2b2_S),
	 	 .vb0(vb0_s));
endmodule

