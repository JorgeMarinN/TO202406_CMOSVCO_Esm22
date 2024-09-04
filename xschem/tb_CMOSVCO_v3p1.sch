v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2260 -1000 3020 -1000 {
lab=VDD}
N 2260 -920 3020 -920 {
lab=VSS}
N 2330 -970 2380 -970 {
lab=V_1}
N 2520 -970 2570 -970 {
lab=V_2}
N 2710 -970 2760 -970 {
lab=V_3}
N 2900 -970 2950 -970 {
lab=V_4}
N 2190 -1050 2190 -970 {
lab=V_5}
N 2190 -1050 3090 -1050 {
lab=V_5}
N 3090 -1050 3090 -970 {
lab=V_5}
N 2190 -950 2190 -870 {
lab=VCONT}
N 2380 -950 2380 -870 {
lab=VCONT}
N 2570 -950 2570 -870 {
lab=VCONT}
N 2760 -950 2760 -870 {
lab=VCONT}
N 2950 -950 2950 -870 {
lab=VCONT}
N 2150 -870 2950 -870 {
lab=VCONT}
C {devices/code.sym} 3250 -1200 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/code_shown.sym} 3240 -1020 0 0 {name=s1 only_toplevel=false value="vvcc vcc 0 dc 3.3
vvss vss 0 0
vvcont VCONT 0 dc 1.65
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 3.3

.control
   compose vin_var start=0.1 stop=2 step=0.1
   foreach val $&vin_var
     alter vvcont $val
     tran 5n 300u
   end
wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_CMOSVCO_v3p1.txt v(V_1) tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1) tran12.v(V_1) tran13.v(V_1) tran14.v(V_1) tran15.v(V_1) tran16.v(V_1) tran17.v(V_1) tran18.v(V_1) tran19.v(V_1)
plot tran1.v(V_1) (tran10.v(V_1)+4) (tran19.v(V_1)+8)
.endc
"}
C {devices/lab_pin.sym} 2290 -1000 1 0 {name=p13 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2290 -920 3 0 {name=p14 sig_type=std_logic lab=VSS}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2260 -960 0 0 {name=x1}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2450 -960 0 0 {name=x2}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2640 -960 0 0 {name=x3}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2830 -960 0 0 {name=x4}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 3020 -960 0 0 {name=x5}
C {devices/lab_pin.sym} 2150 -870 1 0 {name=p2 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 2350 -970 1 0 {name=p3 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 2540 -970 1 0 {name=p8 sig_type=std_logic lab=V_2}
C {devices/lab_pin.sym} 2730 -970 1 0 {name=p9 sig_type=std_logic lab=V_3}
C {devices/lab_pin.sym} 2920 -970 1 0 {name=p10 sig_type=std_logic lab=V_4}
C {devices/lab_pin.sym} 3090 -1050 1 0 {name=p11 sig_type=std_logic lab=V_5}
