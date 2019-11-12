//`timescale 1ns

module IIR_tb ();

   // signals
<<<<<<< HEAD
   wire CLK_i;
   wire RST_n_i;
   wire [11:0] DIN_i;
   wire [11:0] v_filter_i;
   wire [11:0] v1_filter_i;
   wire [11:0] v2_filter_i;
   wire VIN_filter;
   wire VIN_i;
   wire [11:0] DOUT_i;
   wire VOUT_i;
   wire END_SIM_i;
   // port map
   clk_gen CG(.END_SIM(END_SIM_i),
  	      .CLK(CLK_i),
	      .RST_n(RST_n_i));

   IIR_tb_in TB_IN(
	     .CLK(CLK_i),
	     .RST_n(RST_n_i),
		 .VOUT(VIN_i),
		 .DOUT(DIN_i),
		 .END_SIM(END_SIM_i));

   myfir UUT(.CLK(CLK_i),
	     .RST_n(RST_n_i),
	     .DIN(DIN_i),
         .VIN(VIN_i),
         .DOUT(DOUT_i),
         .VOUT(VOUT_i),
		 .v(v_filter),
	     .v1(v1_filter_i),
	     .v2(v2_filter_i));

   IIR_tb_out TB_OUT(
	    .CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN(DOUT_i),
		//Vin e Din del filtro sono prese direttamente dal
		// testbench precendente.
		.VIN_filter(VIN_i),
		.DIN_filter(VIN_i),
		.v_filter(v_filter),
	    .v1_filter(v1_filter_i),
	    .v2_filter(v2_filter_i));   
endmodule


=======
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

   IIR_filter UUT(.CLK(CLK_s),
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

>>>>>>> c6788b3
