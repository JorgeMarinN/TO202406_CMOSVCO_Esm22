v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2560 -1040 2560 -1010 {
lab=VDD}
N 2560 -890 2560 -860 {
lab=VSS}
N 2470 -950 2500 -950 {
lab=VCONTr}
N 2620 -970 2650 -970 {
lab=V_1r}
N 2620 -930 2650 -930 {
lab=V_2r}
N 2560 -1360 2560 -1330 {
lab=VDD}
N 2560 -1210 2560 -1180 {
lab=VSS}
N 2470 -1270 2500 -1270 {
lab=VCONTs}
N 2620 -1290 2650 -1290 {
lab=V_1s}
N 2620 -1250 2650 -1250 {
lab=V_2s}
N 2840 -1210 2840 -1180 {
lab=VDD}
N 2840 -1060 2840 -1030 {
lab=VSS}
N 2760 -1160 2800 -1160 {
lab=V_1s}
N 2760 -1080 2800 -1080 {
lab=V_1r}
N 2880 -1160 2920 -1160 {
lab=DOUT}
N 2880 -1080 2920 -1080 {
lab=nDOUT}
C {devices/code.sym} 3250 -1200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value="vvdd vdd 0 dc 3.3
vvss vss 0 0
vvcontr VCONTr 0 dc 2.1
vvconts VCONTs 0 dc 0.1
*.option temp = 200
.ic v(V_1s) = 0
.ic v(V_2s) = 3.3
.ic v(V_1r) = 0
.ic v(V_2r) = 3.3

.control
   compose vin_var start=0.1 stop=2 step=0.1
   foreach val $&vin_var
     alter vvconts $val
     tran 5n 300u
   end
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/dataVSENS_2xCMOSVCOnDFF_v1p1.txt v(V_1s) tran1.v(V_1s) tran2.v(V_1s) tran3.v(V_1s) tran4.v(V_1s) tran5.v(V_1s) tran6.v(V_1s) tran7.v(V_1s) tran8.v(V_1s) tran9.v(V_1s) tran10.v(V_1s) tran11.v(V_1s) tran12.v(V_1s) tran13.v(V_1s) tran14.v(V_1s) tran15.v(V_1s) tran16.v(V_1s) tran17.v(V_1s) tran18.v(V_1s) tran19.v(V_1s)
plot tran1.v(V_1s) (tran10.v(V_1s)+4) (tran19.v(V_1s)+8)
plot tran1.v(V_1r) (tran10.v(V_1r)+4) (tran19.v(V_1r)+8)
plot tran1.v(DOUT) (tran10.v(DOUT)+4) (tran19.v(DOUT)+8)
.endc
"}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 2560 -950 0 0 {name=xVREF}
C {devices/lab_pin.sym} 2560 -1040 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2560 -860 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2470 -950 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 2650 -970 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 2650 -930 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 2560 -1270 0 0 {name=xVSENS}
C {devices/lab_pin.sym} 2560 -1360 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2560 -1180 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2470 -1270 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 2650 -1290 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 2650 -1250 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/DFF_v4p1.sym} 2740 -1120 0 0 {name=X1}
C {devices/lab_pin.sym} 2840 -1210 1 0 {name=p11 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2840 -1030 3 0 {name=p12 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2760 -1160 1 0 {name=p13 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 2760 -1080 1 0 {name=p14 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 2920 -1160 1 0 {name=p15 sig_type=std_logic lab=DOUT}
C {devices/lab_pin.sym} 2920 -1080 1 0 {name=p16 sig_type=std_logic lab=nDOUT}
