v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 270 -90 410 -90 {
lab=VOUT}
N 550 -90 620 -90 {
lab=VOUT2}
C {devices/code_shown.sym} 20 50 0 0 {name=LIB1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code_shown.sym} 20 170 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.control
save all
tran 10n 500u
plot V(VIN) V(VOUT)
.endc
"}
C {devices/vsource.sym} -160 -110 0 0 {name=VCC value=1.8}
C {devices/vsource.sym} -240 -110 0 0 {name=VSS value=0}
C {devices/gnd.sym} -240 -80 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -160 -80 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} -240 -210 0 0 {name=VIN value="PULSE(1.8 0 0n 1.5u 1.5u 6u 12u)"}
C {devices/lab_pin.sym} -240 -240 0 0 {name=p1 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} -240 -180 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -240 -140 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 130 -90 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {devices/lab_pin.sym} 200 -40 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} -160 -140 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 200 -120 0 0 {name=p7 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 330 -90 1 0 {name=p8 sig_type=std_logic lab=VOUT}
C {devices/vsource.sym} -410 -110 0 0 {name=VCONT value=1.1}
C {devices/gnd.sym} -410 -80 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -410 -140 0 0 {name=p9 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} 130 -70 0 0 {name=p10 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} 480 -40 0 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 480 -120 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 410 -70 0 0 {name=p15 sig_type=std_logic lab=VCONT
}
C {devices/lab_pin.sym} 580 -90 1 0 {name=p11 sig_type=std_logic lab=VOUT2}
C {devices/capa.sym} 620 -60 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 620 -30 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v2p1.sym} 200 -80 0 0 {name=x1}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v2p1.sym} 480 -80 0 0 {name=x2}
