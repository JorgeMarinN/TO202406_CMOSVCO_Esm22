v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2170 -990 2930 -990 {
lab=vcc}
N 2170 -910 2930 -910 {
lab=vss}
N 2240 -960 2290 -960 {
lab=V_1}
N 2430 -960 2480 -960 {
lab=V_2}
N 2620 -960 2670 -960 {
lab=#net1}
N 2810 -960 2860 -960 {
lab=#net2}
N 2100 -1040 2100 -960 {
lab=#net3}
N 2100 -1040 3000 -1040 {
lab=#net3}
N 3000 -1040 3000 -960 {
lab=#net3}
N 2100 -940 2100 -860 {
lab=VCONT}
N 2290 -940 2290 -860 {
lab=VCONT}
N 2480 -940 2480 -860 {
lab=VCONT}
N 2670 -940 2670 -860 {
lab=VCONT}
N 2860 -940 2860 -860 {
lab=VCONT}
N 2060 -860 2860 -860 {
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
.ic v(V_2) = 1.8

.control
   tran 50n 100u
*   run
   write CMOSVCO_v1p1.raw
   wrdata /foss/designs/TO202406_CMOSVCO_Esm22/CMOSVCO_v1p1.txt v(V_1)
.endc
"}
C {devices/lab_pin.sym} 2200 -990 1 0 {name=p13 sig_type=std_logic lab=vcc}
C {devices/lab_pin.sym} 2200 -910 3 0 {name=p14 sig_type=std_logic lab=vss}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2170 -950 0 0 {name=x1}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2360 -950 0 0 {name=x2}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2550 -950 0 0 {name=x3}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2740 -950 0 0 {name=x4}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/stage_v1p1.sym} 2930 -950 0 0 {name=x5}
C {devices/lab_pin.sym} 2060 -860 1 0 {name=p1 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 2260 -960 1 0 {name=p2 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 2450 -960 1 0 {name=p3 sig_type=std_logic lab=V_2}
