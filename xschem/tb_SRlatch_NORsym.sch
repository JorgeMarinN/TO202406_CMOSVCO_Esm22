v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {devices/code_shown.sym} 20 50 0 0 {name=LIB1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code_shown.sym} 20 170 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.control
save all
tran 1n 20u
*plot V(VIN1) V(VIN2)+2 V(V_N)+4 V(V_PWM)+6
plot V(VIN1) V(VIN2)+2 V(V_PWM)+4
.endc
"}
C {devices/vsource.sym} 80 -60 0 0 {name=VCC value=1.8}
C {devices/vsource.sym} 0 -60 0 0 {name=VSS value=0}
C {devices/gnd.sym} 0 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 80 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 0 -170 0 0 {name=VIN2 value="PULSE(0 1.8 45n 1n 1n 3n 245n)"}
C {devices/lab_pin.sym} 0 -200 0 0 {name=p1 sig_type=std_logic lab=VIN2}
C {devices/lab_pin.sym} 0 -140 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -90 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -90 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/vsource.sym} 0 -270 0 0 {name=VIN1 value="PULSE(0 1.8 0n 1n 1n 3n 200n)"}
C {devices/lab_pin.sym} 0 -300 0 0 {name=p4 sig_type=std_logic lab=VIN1}
C {devices/lab_pin.sym} 0 -240 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/SRlatch_NOR.sym} 620 -150 0 0 {name=x3}
C {devices/lab_pin.sym} 620 -80 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 620 -220 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 470 -170 0 0 {name=p13 sig_type=std_logic lab=VIN1}
C {devices/lab_pin.sym} 470 -130 0 0 {name=p14 sig_type=std_logic lab=VIN2}
C {devices/lab_pin.sym} 770 -150 0 1 {name=p15 sig_type=std_logic lab=V_PWM}
