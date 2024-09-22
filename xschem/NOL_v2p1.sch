v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
L 4 160 -600 1170 -600 {}
L 4 160 -320 1170 -320 {}
L 4 160 -600 160 -320 {}
L 4 1170 -600 1170 -320 {}
T {NON-OVERLAP CIRCUIT} 380 -670 0 0 0.4 0.4 {}
N 1120 -500 1230 -500 {
lab=VCN}
N 1120 -400 1230 -400 {
lab=#net1}
N 140 -520 190 -520 {
lab=CLK}
N 270 -520 300 -520 {
lab=#net2}
N 420 -500 440 -500 {
lab=#net3}
N 420 -400 440 -400 {
lab=#net4}
N 170 -520 170 -380 {
lab=CLK}
N 170 -380 300 -380 {
lab=CLK}
N 300 -480 300 -460 {
lab=#net5}
N 300 -460 660 -460 {
lab=#net5}
N 800 -460 800 -400 {
lab=#net5}
N 300 -440 300 -420 {
lab=#net6}
N 300 -440 680 -440 {
lab=#net6}
N 820 -500 820 -440 {
lab=#net6}
N 920 -500 940 -500 {
lab=#net6}
N 820 -500 840 -500 {
lab=#net6}
N 1020 -500 1040 -500 {
lab=#net7}
N 1020 -400 1040 -400 {
lab=#net8}
N 680 -440 820 -440 {
lab=#net6}
N 660 -460 800 -460 {
lab=#net5}
N 740 -500 820 -500 {
lab=#net6}
N 740 -400 800 -400 {
lab=#net5}
N 440 -400 440 -380 {
lab=#net4}
N 740 -400 740 -380 {
lab=#net5}
N 440 -520 440 -500 {
lab=#net3}
N 740 -520 740 -500 {
lab=#net6}
N 840 -500 920 -500 {
lab=#net6}
N 800 -400 840 -400 {
lab=#net5}
N 920 -400 940 -400 {
lab=#net9}
C {devices/iopin.sym} 140 -520 2 0 {name=p1 lab=CLK}
C {devices/iopin.sym} 1230 -400 0 0 {name=p2 lab=VCP}
C {devices/iopin.sym} 1230 -500 0 0 {name=p3 lab=VCN}
C {devices/iopin.sym} 140 -660 2 0 {name=p4 lab=VCC}
C {devices/iopin.sym} 140 -620 2 0 {name=p5 lab=VSS}
C {sky130_stdcells/inv_1.sym} 230 -520 0 0 {name=x3 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {devices/code_shown.sym} 170 -240 0 0 {name=LIB1 only_toplevel=false value="
*.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.include /foss/pdks/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice
"}
C {sky130_stdcells/nor2_1.sym} 360 -500 0 0 {name=x1 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/nor2_1.sym} 360 -400 0 0 {name=x2 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 980 -500 0 0 {name=x8 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 1080 -500 0 0 {name=x9 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_1.sym} 880 -400 0 0 {name=x10 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_2.sym} 980 -400 0 0 {name=x11 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {sky130_stdcells/inv_4.sym} 1080 -400 0 0 {name=x12 VGND=VSS VNB=VSS VPB=VCC VPWR=VCC prefix=sky130_fd_sc_hd__ }
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/large_delay_v1p1.sym} 560 -520 0 0 {name=x13}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/large_delay_v1p1.sym} 560 -380 0 0 {name=x4}
C {devices/lab_pin.sym} 600 -560 0 0 {name=p6 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 620 -480 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 600 -420 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {devices/lab_pin.sym} 620 -340 0 0 {name=p9 sig_type=std_logic lab=VSS}
