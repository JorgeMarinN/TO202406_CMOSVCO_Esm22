v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 375 -90 515 -90 {
lab=VOUT}
N 345 -60 345 -30 {
lab=VSS}
N 345 -150 345 -120 {
lab=VDD}
N 270 -90 310 -90 {
lab=#net1}
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
C {devices/lab_pin.sym} 435 -90 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -410 -110 0 0 {name=VCONT value=1.1}
C {devices/gnd.sym} -410 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 -140 0 0 {name=p9 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} 130 -70 0 0 {name=p10 sig_type=std_logic lab=VCONT
}
C {devices/capa.sym} 515 -60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 515 -30 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 200 -120 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/VCDL_HD_v2p1.sym} 200 -80 0 0 {name=x1}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 270 -90 0 0 {name=X2}
C {devices/lab_pin.sym} 345 -30 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 345 -150 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} -30 -110 0 0 {name=VDD value=3.3}
C {devices/gnd.sym} -30 -80 0 0 {name=l4 lab=GND}
C {devices/lab_pin.sym} -30 -140 0 0 {name=p11 sig_type=std_logic lab=VDD}
