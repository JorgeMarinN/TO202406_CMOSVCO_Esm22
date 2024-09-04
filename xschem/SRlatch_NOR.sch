v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 260 -530 330 -530 {
lab=VINS}
N 260 -350 330 -350 {
lab=VINR}
N 450 -370 500 -370 {
lab=V_PWM}
N 450 -510 500 -510 {
lab=V_N}
N 330 -490 330 -450 {
lab=V_PWM}
N 330 -450 500 -450 {
lab=V_PWM}
N 500 -450 500 -370 {
lab=V_PWM}
N 500 -510 520 -510 {
lab=V_N}
N 520 -510 520 -420 {
lab=V_N}
N 330 -420 520 -420 {
lab=V_N}
N 330 -420 330 -390 {
lab=V_N}
N 500 -370 580 -370 {
lab=V_PWM}
C {devices/iopin.sym} 140 -420 2 0 {name=p1 lab=VINS}
C {devices/iopin.sym} 720 -380 0 0 {name=p2 lab=V_PWM}
C {devices/iopin.sym} 140 -660 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 140 -620 2 0 {name=p5 lab=VSS}
C {devices/code_shown.sym} 110 -210 0 0 {name=LIB1 only_toplevel=false value="
*.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {sky130_stdcells/nor2_1.sym} 390 -510 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 390 -370 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/lab_pin.sym} 260 -530 0 0 {name=p7 sig_type=std_logic lab=VINS}
C {devices/lab_pin.sym} 260 -350 0 0 {name=p8 sig_type=std_logic lab=VINR}
C {devices/lab_pin.sym} 520 -510 0 1 {name=p9 sig_type=std_logic lab=V_N}
C {devices/lab_pin.sym} 580 -370 0 1 {name=p10 sig_type=std_logic lab=V_PWM}
C {devices/iopin.sym} 140 -340 2 0 {name=p6 lab=VINR}
