v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 1800 -1070 1800 -1040 {
lab=VDD}
N 1800 -920 1800 -890 {
lab=VSS}
N 1710 -980 1740 -980 {
lab=VCONTr}
N 1860 -1000 1890 -1000 {
lab=V_1r}
N 1860 -960 1890 -960 {
lab=V_2r}
N 1800 -1390 1800 -1360 {
lab=VDD}
N 1800 -1240 1800 -1210 {
lab=VSS}
N 1710 -1300 1740 -1300 {
lab=VCONTs}
N 1860 -1320 1890 -1320 {
lab=V_1s}
N 1860 -1280 1890 -1280 {
lab=V_2s}
N 2420 -1165 2460 -1165 {
lab=V_1s_buff_sp}
N 2420 -1125 2460 -1125 {
lab=V_1r_buff_sp}
N 2760 -1145 2800 -1145 {
lab=DOUT}
N 1955 -1320 1995 -1320 {
lab=V_1s_buff}
N 1955 -1000 1995 -1000 {
lab=V_1r_buff}
N 1925 -1290 1925 -1260 {
lab=VSS}
N 1925 -970 1925 -940 {
lab=VSS}
N 1925 -1380 1925 -1350 {
lab=VDD}
N 1925 -1060 1925 -1030 {
lab=VDD}
N 2115 -1410 2115 -1380 {
lab=VDD}
N 2115 -1090 2115 -1060 {
lab=VDD}
N 2115 -1260 2115 -1230 {
lab=VSS}
N 2115 -940 2115 -910 {
lab=VSS}
N 2235 -1300 2280 -1300 {
lab=V_1s_buff_sp}
N 2235 -980 2280 -980 {
lab=V_1r_buff_sp}
N 2610 -1245 2610 -1215 {
lab=VDD}
N 2610 -1075 2610 -1045 {
lab=VSS}
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
vvcontr VCONTr 0 dc 1.1
vvconts VCONTs 0 dc 1.1
*.option temp = 200
.save v(V_1s) v(V_1r) v(V_1s_buff) v(V_1r_buff) v(V_1s_buff_sp) v(V_1r_buff_sp) v(DOUT)
.ic v(V_1s) = 0
.ic v(V_2s) = 3.3
.ic v(V_1r) = 0
.ic v(V_2r) = 3.3

.control
   compose vin_var start=1 stop=1 step=0.7
   foreach val $&vin_var
     alter vvconts $val
     *tran 5n 300u
     tran 1n 20u
   end
*wrdata /foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/dataVSENS_2xCMOSVCOnDFF_v1p1.txt v(V_1s) tran1.v(V_1s) tran2.v(V_1s) tran3.v(V_1s) tran4.v(V_1s) tran5.v(V_1s) tran6.v(V_1s) tran7.v(V_1s) tran8.v(V_1s) tran9.v(V_1s) tran10.v(V_1s) tran11.v(V_1s) tran12.v(V_1s) tran13.v(V_1s) tran14.v(V_1s) tran15.v(V_1s) tran16.v(V_1s) tran17.v(V_1s) tran18.v(V_1s) tran19.v(V_1s)
plot tran1.v(V_1s_buff_sp) tran1.v(V_1r_buff_sp) tran1.v(DOUT)+4
*plot tran2.v(V_1s_buff) tran2.v(V_1r_buff) tran2.v(DOUT)+4
*plot tran3.v(V_1s_buff) tran3.v(V_1r_buff) tran3.v(DOUT)+4
.endc
"}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 1800 -980 0 0 {name=xVREF}
C {devices/lab_pin.sym} 1800 -1070 1 0 {name=p4 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1800 -890 3 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1710 -980 1 0 {name=p6 sig_type=std_logic lab=VCONTr}
C {devices/lab_pin.sym} 1880 -1000 1 0 {name=p7 sig_type=std_logic lab=V_1r}
C {devices/lab_pin.sym} 1890 -960 1 0 {name=p1 sig_type=std_logic lab=V_2r}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCO_v3p1.sym} 1800 -1300 0 0 {name=xVSENS}
C {devices/lab_pin.sym} 1800 -1390 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1800 -1210 3 0 {name=p3 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1710 -1300 1 0 {name=p8 sig_type=std_logic lab=VCONTs}
C {devices/lab_pin.sym} 1880 -1320 1 0 {name=p9 sig_type=std_logic lab=V_1s}
C {devices/lab_pin.sym} 1890 -1280 1 0 {name=p10 sig_type=std_logic lab=V_2s}
C {devices/lab_pin.sym} 2420 -1165 1 0 {name=p13 sig_type=std_logic lab=V_1s_buff_sp}
C {devices/lab_pin.sym} 2420 -1125 1 0 {name=p14 sig_type=std_logic lab=V_1r_buff_sp}
C {devices/lab_pin.sym} 2800 -1145 1 0 {name=p15 sig_type=std_logic lab=DOUT}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 1850 -1320 0 0 {name=X2}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/BUFFMIN_v1p2.sym} 1850 -1000 0 0 {name=X3}
C {devices/lab_pin.sym} 2280 -1300 1 0 {name=p17 sig_type=std_logic lab=V_1s_buff_sp}
C {devices/lab_pin.sym} 2280 -980 1 0 {name=p18 sig_type=std_logic lab=V_1r_buff_sp}
C {devices/lab_pin.sym} 1925 -1260 3 0 {name=p19 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1925 -940 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1925 -1380 1 0 {name=p21 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 1925 -1060 1 0 {name=p22 sig_type=std_logic lab=VDD}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/short_pulse_generator.sym} 2115 -1000 0 0 {name=x4}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/short_pulse_generator.sym} 2115 -1320 0 0 {name=x5}
C {devices/lab_pin.sym} 2115 -1410 1 0 {name=p23 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2115 -1090 1 0 {name=p24 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2115 -1230 3 0 {name=p25 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 2115 -910 3 0 {name=p26 sig_type=std_logic lab=VSS}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/SRlatch_NOR.sym} 2610 -1145 0 0 {name=x1}
C {devices/lab_pin.sym} 2610 -1245 1 0 {name=p27 sig_type=std_logic lab=VDD}
C {devices/lab_pin.sym} 2610 -1045 3 0 {name=p28 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 1980 -1000 1 0 {name=p11 sig_type=std_logic lab=V_1r_buff}
C {devices/lab_pin.sym} 1975 -1320 1 0 {name=p12 sig_type=std_logic lab=V_1s_buff}
