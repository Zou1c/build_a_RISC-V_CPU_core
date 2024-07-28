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
   
   //Multiplexers
   //out = $sel? $in1 : $in2;
   
   //Calculator
   //op: 3:/ 2:* 1:- 0:+
//   $out[31:0] = 
//       $op[1]?
//           $op[0]? $val1[31:0] / $val2[31:0] : $val1[31:0] * $val2[31:0]
//           :
//           $op[0]? $val1[31:0] - $val2[31:0] : $val1[31:0] + $val2[31:0];
   $sum[31:0] = $val1[31:0] + $val2[31:0];
   $diff[31:0] = $val1 - $val2; //you only(need to)declear range once
   $prod[31:0] = $val1 * $val2;
   $quot[31:0] = $val1 / $val2;
   
   $out[31:0] = $op[1:0] == 2'b00 ? $sum ://an 2-bit binary ("b") value of 00
                $op == 2'b01 ? $diff :
                $op == 2'b10 ? $prod :
                               $quot; //like default
   
   // Assert these to end simulation (before Makerchip cycle limit).
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
