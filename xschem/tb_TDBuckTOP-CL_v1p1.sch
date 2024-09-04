v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {DOUT too many 0s
--> VCOREF faster than VCOSENS
--> VCOSENS needs to  be faster by DECREASING VCONTs
--> this is done by having more 1s in D1 (PMOS)
--> DOUT connected to D1_N to have negative FB} 3245 -1345 0 0 0.3 0.3 {}
N 2320 -1060 2320 -1030 {
lab=VDD}
N 2320 -910 2320 -880 {
lab=VSS}
N 2230 -970 2260 -970 {
lab=VCONTr}
N 2380 -990 2410 -990 {
lab=V_1r}
N 2380 -950 2410 -950 {
lab=V_2r}
N 2320 -1380 2320 -1350 {
lab=VDD}
N 2320 -1230 2320 -1200 {
lab=VSS}
N 2230 -1290 2260 -1290 {
lab=VCONTs}
N 2380 -1310 2410 -1310 {
lab=V_1s}
N 2380 -1270 2410 -1270 {
lab=V_2s}
N 2840 -1210 2840 -1180 {
lab=VDD}
N 2840 -1060 2840 -1030 {
lab=VSS}
N 2760 -1160 2800 -1160 {
lab=V_1s_buff}
N 2760 -1080 2800 -1080 {
lab=V_1r_buff}
N 2880 -1160 2920 -1160 {
lab=DOUT}
N 2880 -1080 2920 -1080 {
lab=nDOUT}
N 2475 -1310 2515 -1310 {
lab=V_1s_buff}
N 2475 -990 2515 -990 {
lab=V_1r_buff}
N 2445 -1280 2445 -1250 {
lab=VSS}
N 2445 -960 2445 -930 {
lab=VSS}
N 2445 -1370 2445 -1340 {
lab=VDD}
N 2445 -1050 2445 -1020 {
lab=VDD}
N 2420 -420 2490 -420 {
lab=V_res}
N 2670 -420 2700 -420 {
lab=#net1}
N 2570 -420 2610 -420 {
lab=V_inductor}
N 2490 -420 2510 -420 {
lab=V_res}
N 2320 -420 2420 -420 {
lab=V_res}
N 2320 -550 2320 -510 {
lab=#net2}
N 2320 -480 2340 -480 {
lab=#net2}
N 2340 -530 2340 -480 {
lab=#net2}
N 2320 -530 2340 -530 {
lab=#net2}
N 2250 -480 2280 -480 {
lab=D1}
N 2320 -570 2320 -550 {
lab=#net2}
N 2320 -340 2320 -300 {
lab=VSS}
N 2320 -370 2340 -370 {
lab=VSS}
N 2340 -370 2340 -320 {
lab=VSS}
N 2320 -320 2340 -320 {
lab=VSS}
N 2240 -370 2280 -370 {
lab=D1_N}
N 2320 -450 2320 -400 {
lab=V_res}
N 2320 -680 2320 -630 { lab=VH}
N 2795 -630 2795 -610 { lab=GND}
N 2795 -740 2795 -690 { lab=VH}
N 1555 -230 1585 -230 {
lab=VDIG}
N 1885 -230 1905 -230 {
lab=VH}
N 1905 -250 1905 -230 {
lab=VH}
N 1885 -190 1925 -190 {
lab=D1_N}
N 1555 -640 1585 -640 {
lab=VDIG}
N 1885 -640 1905 -640 {
lab=VH}
N 1905 -660 1905 -640 {
lab=VH}
N 1885 -600 1925 -600 {
lab=D1}
N 1365 -620 1395 -620 {
lab=DOUT}
N 1545 -590 1585 -590 {
lab=VSS}
N 1585 -600 1585 -590 {
lab=VSS}
N 1545 -180 1585 -180 {
lab=VSS}
N 1585 -190 1585 -180 {
lab=VSS}
N 2905 -630 2905 -610 { lab=GND}
N 2905 -740 2905 -690 { lab=VDIG}
N 2700 -250 2700 -210 {
lab=VSS}
N 2860 -200 2860 -160 {
lab=GND}
N 2860 -320 2860 -260 {
lab=#net3}
N 2860 -420 2860 -380 {
lab=ldo_out}
N 2700 -360 2700 -310 {
lab=ldo_out}
N 3080 -300 3080 -240 {
lab=VCONTs}
N 3080 -180 3080 -140 {
lab=GND}
N 3080 -400 3080 -360 {
lab=ldo_out}
N 1430 -590 1430 -560 {
lab=VSS}
N 1430 -680 1430 -650 {
lab=VDD}
N 1460 -620 1585 -620 {
lab=DOUT_D1}
N 1365 -210 1395 -210 {
lab=DOUT}
N 1430 -180 1430 -150 {
lab=VSS}
N 1430 -270 1430 -240 {
lab=VDD}
N 1460 -210 1585 -210 {
lab=DOUT_D1_N}
C {devices/code.sym} 3250 -1200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value=".param VDIG = 3.3
.param VH = 5
*113mA
*.param RL = 26
*93mA
*.param RL = 32
*82mA
*.param RL = 39
*57mA
*.param RL = 52
*29mA
*.param RL = 104
*14mA
*.param RL = 208
.param RL = 300
*197mA
*.param RL = 13
vvdd vdd 0 dc 3.3
vvss vss 0 0
vvcontr VCONTr 0 dc 1
*vvconts VCONTs 0 dc 0.1
*.option temp = 200
.ic v(V_1s) = 0
.ic v(V_2s) = 3.3
.ic v(V_1r) = 0
.ic v(V_2r) = 3.3
*.ic v(ldo_out) = 3.3
*.ic v(V_res) = 3.3
*.ic v(V_inductor) = 3.3
.ic v(ldo_out) = 2.5
.ic v(V_res) = 2.5
.ic v(V_inductor) = 2.5

.control
tran 20n 1m
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/dataVSENS_2xCMOSVCOnDFF_v1p1.txt v(V_1s) tran1.v(V_1s) tran2.v(V_1s) tran3.v(V_1s) tran4.v(V_1s) tran5.v(V_1s) tran6.v(V_1s) tran7.v(V_1s) tran8.v(V_1s) tran9.v(V_1s) tran10.v(V_1s) tran11.v(V_1s) tran12.v(V_1s) tran13.v(V_1s) tran14.v(V_1s) tran15.v(V_1s) tran16.v(V_1s) tran17.v(V_1s) tran18.v(V_1s) tran19.v(V_1s)
plot v(ldo_out)
plot v(v_res)
plot v(D1) v(D1_N)+5
plot v(DOUT)
plot v(VCONTr) v(VCONTs)
plot v(V_1r_buff) v(V_1s_buff)+4 v(DOUT)+8
.endc
"}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 2320 -970 0 0 {name=xVREF}
C {devices/lab_pin.sym} 2320 -1060 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2320 -880 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2230 -970 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 2400 -990 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 2410 -950 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 2320 -1290 0 0 {name=xVSENS}
C {devices/lab_pin.sym} 2320 -1380 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2320 -1200 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2230 -1290 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 2400 -1310 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 2410 -1270 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/DFF_v4p1.sym} 2740 -1120 0 0 {name=X1}
C {devices/lab_pin.sym} 2840 -1210 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2840 -1030 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2760 -1160 1 0 {name=p13 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 2760 -1080 1 0 {name=p14 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 2920 -1160 1 0 {name=p15 sig_type=std_logic lab=DOUT}
C {devices/lab_pin.sym} 2920 -1080 1 0 {name=p16 sig_type=std_logic lab=nDOUT}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 2370 -1310 0 0 {name=X2}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 2370 -990 0 0 {name=X3}
C {devices/lab_pin.sym} 2515 -1310 1 0 {name=p17 sig_type=std_logic lab=V_1s_buff}
C {devices/lab_pin.sym} 2515 -990 1 0 {name=p18 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 2445 -1250 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2445 -930 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2445 -1370 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2445 -1050 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {devices/ind.sym} 2640 -420 1 0 {name=L37
m=1
value=47u
footprint=1206
device=inductor}
C {devices/lab_wire.sym} 2590 -420 1 1 {name=l38 sig_type=std_logic lab=V_inductor}
C {devices/res.sym} 2540 -420 1 0 {name=R3
value=2.4
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 2490 -420 1 1 {name=l39 sig_type=std_logic lab=V_res}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 2300 -480 0 0 {name=M3
L=0.5
W=4.38
nf=1
mult=4506
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_g5v0d10v5
spiceprefix=X
}
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 2300 -370 0 0 {name=M1
L=0.5
W=4.38
nf=1
mult=2520
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_g5v0d10v5
spiceprefix=X
}
C {devices/vsource.sym} 2320 -600 0 0 {name=V5 value=0}
C {devices/lab_wire.sym} 2320 -680 0 0 {name=l18 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 2320 -300 2 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2250 -480 0 0 {name=l21 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 2240 -370 0 0 {name=l22 sig_type=std_logic lab=D1_N
}
C {devices/vsource.sym} 2700 -390 0 0 {name=V_res value=0}
C {devices/lab_pin.sym} 2700 -335 2 0 {name=p23 sig_type=std_logic lab=ldo_out

}
C {devices/vsource.sym} 2795 -660 0 0 {name=VH value=\{VH\}}
C {devices/gnd.sym} 2795 -610 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} 2795 -740 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 1555 -230 0 0 {name=l4 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 1925 -190 0 1 {name=l6 sig_type=std_logic lab=D1_N
}
C {devices/lab_wire.sym} 1555 -640 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 1905 -660 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} 1925 -600 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} 1545 -590 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1545 -180 0 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1905 -250 0 1 {name=l36 sig_type=std_logic lab=VH
}
C {LS_FINAL.sym} 1735 -620 0 0 {name=x4}
C {LS_FINAL.sym} 1735 -210 0 0 {name=x5}
C {devices/vsource.sym} 2905 -660 0 0 {name=V8 value=\{VDIG\}}
C {devices/gnd.sym} 2905 -610 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} 2905 -740 0 0 {name=l2 sig_type=std_logic lab=VDIG}
C {devices/capa.sym} 2700 -280 0 0 {name=C4
m=1
value=47u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 2700 -210 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/res.sym} 2860 -230 0 0 {name=RL
value=\{RL\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 2860 -350 0 0 {name=Vldo_out value=0}
C {devices/gnd.sym} 2860 -160 0 0 {name=l52 lab=GND}
C {devices/lab_pin.sym} 2860 -420 2 0 {name=p24 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 2860 -420 2 0 {name=p25 sig_type=std_logic lab=ldo_out

}
C {devices/res.sym} 3080 -330 0 0 {name=RDIV1
value=100e6
footprint=1206
device=resistor
m=1}
C {devices/res.sym} 3080 -210 0 0 {name=RDIV2
value=43.5e6
footprint=1206
device=resistor
m=1}
C {devices/gnd.sym} 3080 -140 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} 3080 -400 2 0 {name=p26 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 3080 -400 2 0 {name=p27 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 3080 -265 2 0 {name=p28 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1365 -620 0 0 {name=p30 sig_type=std_logic lab=DOUT}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 1355 -620 0 0 {name=X6}
C {devices/lab_pin.sym} 1430 -560 3 0 {name=p33 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1430 -680 1 0 {name=p34 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1485 -620 1 0 {name=p31 sig_type=std_logic lab=DOUT_D1}
C {devices/lab_pin.sym} 1365 -210 0 0 {name=p29 sig_type=std_logic lab=DOUT}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 1355 -210 0 0 {name=X7}
C {devices/lab_pin.sym} 1430 -150 3 0 {name=p32 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1430 -270 1 0 {name=p35 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1485 -210 1 0 {name=p36 sig_type=std_logic lab=DOUT_D1_N}
