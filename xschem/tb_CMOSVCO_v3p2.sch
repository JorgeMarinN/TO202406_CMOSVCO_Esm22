v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 2980 -1020 2980 -990 {
lab=VDD}
N 2980 -870 2980 -840 {
lab=VSS}
N 2890 -930 2920 -930 {
lab=VCONT}
N 3040 -950 3070 -950 {
lab=V_1}
N 3040 -910 3070 -910 {
lab=V_2}
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
wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_CMOSVCO_v3p2.txt v(V_1) tran1.v(V_1) tran2.v(V_1) tran3.v(V_1) tran4.v(V_1) tran5.v(V_1) tran6.v(V_1) tran7.v(V_1) tran8.v(V_1) tran9.v(V_1) tran10.v(V_1) tran11.v(V_1) tran12.v(V_1) tran13.v(V_1) tran14.v(V_1) tran15.v(V_1) tran16.v(V_1) tran17.v(V_1) tran18.v(V_1) tran19.v(V_1)
plot tran1.v(V_1) (tran10.v(V_1)+4) (tran19.v(V_1)+8)
.endc
"}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 2980 -930 0 0 {name=x6}
C {devices/lab_pin.sym} 2980 -1020 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2980 -840 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2890 -930 1 0 {name=p6 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} 3070 -950 1 0 {name=p7 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} 3070 -910 1 0 {name=p1 sig_type=std_logic lab=V_2}
