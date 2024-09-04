v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 460 -200 530 -200 {
lab=VIN1}
N 460 -20 530 -20 {
lab=VIN2}
N 650 -40 700 -40 {
lab=V_PWM}
N 650 -180 700 -180 {
lab=V_N}
N 530 -160 530 -120 {
lab=V_PWM}
N 530 -120 700 -120 {
lab=V_PWM}
N 700 -120 700 -40 {
lab=V_PWM}
N 700 -180 720 -180 {
lab=V_N}
N 720 -180 720 -90 {
lab=V_N}
N 530 -90 720 -90 {
lab=V_N}
N 530 -90 530 -60 {
lab=V_N}
N 700 -40 780 -40 {
lab=V_PWM}
C {devices/code_shown.sym} 20 50 0 0 {name=LIB1 only_toplevel=false value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {devices/code_shown.sym} 20 170 0 0 {name=CODE only_toplevel=false value="
.option scale=1e-6
.control
save all
tran 10n 100u
plot V(VIN1) V(VIN2)+2 V(V_N)+4 V(V_PWM)+6
.endc
"}
C {devices/vsource.sym} 80 -60 0 0 {name=VCC value=1.8}
C {devices/vsource.sym} 0 -60 0 0 {name=VSS value=0}
C {devices/gnd.sym} 0 -30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 80 -30 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 0 -160 0 0 {name=VIN2 value="PULSE(0 1.8 5u 5n 5n 20n 10u)"}
C {devices/lab_pin.sym} 0 -190 0 0 {name=p1 sig_type=std_logic lab=VIN2}
C {devices/lab_pin.sym} 0 -130 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -90 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 80 -90 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {sky130_stdcells/nor2_1.sym} 590 -180 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 590 -40 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/vsource.sym} 0 -270 0 0 {name=VIN1 value="PULSE(0 1.8 0n 5n 5n 20n 10000.0n)"}
C {devices/lab_pin.sym} 0 -300 0 0 {name=p4 sig_type=std_logic lab=VIN1}
C {devices/lab_pin.sym} 0 -240 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -200 0 0 {name=p7 sig_type=std_logic lab=VIN1}
C {devices/lab_pin.sym} 460 -20 0 0 {name=p8 sig_type=std_logic lab=VIN2}
C {devices/lab_pin.sym} 720 -180 0 1 {name=p9 sig_type=std_logic lab=V_N}
C {devices/lab_pin.sym} 780 -40 0 1 {name=p10 sig_type=std_logic lab=V_PWM}
