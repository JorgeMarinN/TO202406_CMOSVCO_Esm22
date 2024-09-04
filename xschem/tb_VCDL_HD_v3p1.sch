v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -90 410 -90 {
lab=VOUT}
C {devices/code_shown.sym} 20 50 0 0 {name=LIB1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code_shown.sym} 20 170 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.control
   save all
   compose vin_var start=0.9 stop=1.3 step=0.1
   foreach val $&vin_var
	alter vcont $val
	tran 10n 36u
   end
   plot tran1.V(VIN) tran1.V(VOUT) tran2.V(VOUT) tran3.V(VOUT) tran4.V(VOUT) tran5.V(VOUT)
.endc

.measure tran trise1 
+ TRIG tran1.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran1.V(VOUT) TD=0u VAL=0.9 RISE=1
.measure tran trise2
+ TRIG tran2.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran2.V(VOUT) TD=0u VAL=0.9 RISE=1
.measure tran trise3
+ TRIG tran3.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran3.V(VOUT) TD=0u VAL=0.9 RISE=1
.measure tran trise4
+ TRIG tran4.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran4.V(VOUT) TD=0u VAL=0.9 RISE=1
.measure tran trise5
+ TRIG tran5.V(VIN) TD=0u VAL=0.9 RISE=1
+ TARG tran5.V(VOUT) TD=0u VAL=0.9 RISE=1
"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.8}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(0 3.3 11u 100n 100n 12u 24u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 -90 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 200 -40 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 330 -90 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -410 -110 0 0 {name=VCONT value=1.1}
C {devices/gnd.sym} -410 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 -140 0 0 {name=p9 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} 130 -70 0 0 {name=p10 sig_type=std_logic lab=VCONT
}
C {devices/capa.sym} 410 -60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 410 -30 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 230 -120 1 0 {name=p7 sig_type=std_logic lab=VCC}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/VCDL_HD_v3p1.sym} 200 -80 0 0 {name=x1}
C {devices/vsource.sym} -60 -110 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} -60 -80 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -60 -140 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 200 -120 1 0 {name=p12 sig_type=std_logic lab=VDD}
