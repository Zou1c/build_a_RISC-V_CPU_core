\m5_TLV_version 1d: tl-x.org
\m5
   
   // =================================================
   // Welcome!  New to Makerchip? Try the "Learn" menu.
   // =================================================
   
   //use(m5-1.0)   /// uncomment to use M5 macro library.
\SV
   // Macro providing required top-level module definition, random
   // stimulus support, and Verilator config.
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   
   //Arithmetic Operators
   
   //adder
   $out1[7:0] = $in1[6:0] + $in2[6:0];//out1: 7bits long
   
   //subtractor(can underflow)
   $out2[10:0] = $in1[6:0] - $in2[6:0];//?
   
   //multiplier
   $ou3[3:0] = $in1[1:0] * $in2[1:0];
   
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
