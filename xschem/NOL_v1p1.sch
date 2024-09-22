v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 160 -560 160 -360 {}
L 4 160 -360 860 -360 {}
L 4 160 -560 860 -560 {}
L 4 860 -560 1040 -560 {}
L 4 860 -360 1040 -360 {}
L 4 1040 -560 1040 -360 {}
T {NON-OVERLAP CIRCUIT} 390 -590 0 0 0.4 0.4 {}
N 980 -500 1090 -500 {
lab=VCP}
N 980 -400 1090 -400 {
lab=VCN}
N 140 -520 190 -520 {
lab=CLK}
N 270 -520 300 -520 {
lab=#net1}
N 420 -500 440 -500 {
lab=#net2}
N 420 -400 440 -400 {
lab=#net3}
N 520 -500 540 -500 {
lab=#net4}
N 520 -400 540 -400 {
lab=#net5}
N 170 -520 170 -380 {
lab=CLK}
N 170 -380 300 -380 {
lab=CLK}
N 300 -480 300 -460 {
lab=#net6}
N 300 -460 660 -460 {
lab=#net6}
N 660 -460 660 -400 {
lab=#net6}
N 620 -400 660 -400 {
lab=#net6}
N 300 -440 300 -420 {
lab=#net7}
N 300 -440 680 -440 {
lab=#net7}
N 680 -500 680 -440 {
lab=#net7}
N 620 -500 680 -500 {
lab=#net7}
N 780 -500 800 -500 {
lab=#net8}
N 680 -500 700 -500 {
lab=#net7}
N 880 -500 900 -500 {
lab=#net9}
N 880 -400 900 -400 {
lab=#net10}
N 660 -400 800 -400 {
lab=#net6}
C {devices/iopin.sym} 140 -520 2 0 {name=p1 lab=CLK}
C {devices/iopin.sym} 1090 -500 0 0 {name=p2 lab=VCP}
C {devices/iopin.sym} 1090 -400 0 0 {name=p3 lab=VCN}
C {devices/iopin.sym} 140 -660 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 140 -620 2 0 {name=p5 lab=VSS}
C {sky130_stdcells/inv_1.sym} 230 -520 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 480 -400 0 0 {name=x4 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 480 -500 0 0 {name=x5 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code_shown.sym} 170 -290 0 0 {name=LIB1 only_toplevel=false value="
*.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {sky130_stdcells/nor2_1.sym} 360 -500 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 360 -400 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 580 -400 0 0 {name=x6 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 580 -500 0 0 {name=x7 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 840 -500 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 940 -500 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 740 -500 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 840 -400 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 940 -400 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
