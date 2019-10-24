//`timescale 1ns

module tb_fir ();

   // signals
   wire CLK_i;
   wire RST_n_i;
   wire [11:0] DIN_i;
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
         .VOUT(VOUT_i));

   IIR_tb_out TB_OUT(
	    .CLK(CLK_i),
		.RST_n(RST_n_i),
		.VIN(VOUT_i),
		.DIN(DOUT_i),
		//Vin e Din del filtro sono prese direttamente dal
		// testbench precendente.
		.VIN_filter(VIN_i),
		.DIN_filter(VIN_i));
endmodule


