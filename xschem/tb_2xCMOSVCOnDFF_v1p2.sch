v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
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
     *tran 5n 300u
     tran 10n 50u
   end
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/dataVSENS_2xCMOSVCOnDFF_v1p1.txt v(V_1s) tran1.v(V_1s) tran2.v(V_1s) tran3.v(V_1s) tran4.v(V_1s) tran5.v(V_1s) tran6.v(V_1s) tran7.v(V_1s) tran8.v(V_1s) tran9.v(V_1s) tran10.v(V_1s) tran11.v(V_1s) tran12.v(V_1s) tran13.v(V_1s) tran14.v(V_1s) tran15.v(V_1s) tran16.v(V_1s) tran17.v(V_1s) tran18.v(V_1s) tran19.v(V_1s)
plot tran1.v(V_1s) (tran10.v(V_1s)+4) (tran19.v(V_1s)+8)
plot tran1.v(V_1r) (tran10.v(V_1r)+4) (tran19.v(V_1r)+8)
plot tran1.v(DOUT) (tran10.v(DOUT)+4) (tran19.v(DOUT)+8)
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
