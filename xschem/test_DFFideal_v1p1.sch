v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 780 10 840 10 { lab=D}
N 780 90 840 90 { lab=ND}
N 370 10 680 10 { lab=IN}
N 370 70 370 90 { lab=GND}
N 470 150 470 170 { lab=GND}
N 470 90 680 90 { lab=CLK}
N 680 10 700 10 { lab=IN}
N 680 90 700 90 { lab=CLK}
N 740 -40 740 -10 { lab=GND}
N 300 -40 740 -40 { lab=GND}
N 300 -40 300 80 { lab=GND}
N 300 80 370 80 { lab=GND}
N 740 110 740 150 { lab=GND}
N 470 150 740 150 { lab=GND}
C {devices/code_shown.sym} 320 -330 0 0 {name=SPICE only_toplevel=false value="*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save v(in) v(clk) v(d) v(nd)
.param VDD = 1.8
.tran 0.1n 200n
.save all
"}
C {devices/lab_pin.sym} 840 10 2 0 {name=l3 sig_type=std_logic lab=D}
C {devices/lab_pin.sym} 840 90 2 0 {name=l4 sig_type=std_logic lab=ND}
C {devices/vsource.sym} 370 40 0 0 {name=V2 value="pulse 0 1.8 0 1n 1n 10n 20n"}
C {devices/gnd.sym} 370 90 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 470 120 0 0 {name=V3 value="pulse 0 1.8 0 1n 1n 13n 26n"}
C {devices/gnd.sym} 470 170 0 0 {name=l6 lab=GND}
C {devices/lab_pin.sym} 490 10 1 0 {name=l7 sig_type=std_logic lab=IN}
C {devices/lab_pin.sym} 590 90 1 0 {name=l8 sig_type=std_logic lab=CLK}
C {DFFideal_v1p1.sym} 640 50 0 0 {device_model=".model flop1 d_dff(clk_delay = 13.0e-9 set_delay = 25.0e-9
+ reset_delay = 27.0e-9 ic = 2 rise_delay = 10.0e-9
+ fall_delay = 3e-9)"}
