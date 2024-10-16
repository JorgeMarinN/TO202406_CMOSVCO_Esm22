v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -370 -180 -370 -150 {
lab=VDD_S}
N -370 -30 -370 0 {
lab=VSS_S}
N -460 -90 -430 -90 {
lab=VCONT}
N -310 -110 -280 -110 {
lab=V_1}
N -310 -70 -280 -70 {
lab=V_2}
C {devices/code_shown.sym} -140 -70 0 0 {name=CODE only_toplevel=false value="
* Test of VCO: frequency versus control voltage

.csparam simtime=5u


vdd vdd 0 dc 1.8
vco ctrl 0 dc 1

vvdd vdd_s 0 dc 3.3
vvss vss_s 0 0
vvcont VCONT 0 dc 1
*.option temp = 200
.ic v(V_1) = 0
.ic v(V_2) = 3.3

.include /foss/designs/TO202406_CMOSVCO_Esm22/xschem/behav/vco_behave_jm_v1p1.ckt

XVCO ctrl out vdd 0 vco_behav

.control
tran 1n 50u

let meas_rise_at = 5
let next_rise_at = meas_rise_at + 1

let vout_max = vecmax(v(out))
let vout_min = vecmin(v(out))
let vout_cm = ((vout_max - vout_min) / 2.0) + vout_min

meas tran tperiod TRIG v(out) VAL=vout_cm RISE=meas_rise_at TARG v(out) VAL=vout_cm RISE=next_rise_at
let freq = 1/(tperiod)

print vout_max
print vout_min
print vout_cm
print freq

plot v(out) v(v_1)

.endc


"}
C {devices/code.sym} -430 160 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_pin.sym} -370 -180 1 0 {name=p4 sig_type=std_logic lab=VDD_S}
C {devices/lab_pin.sym} -370 0 3 0 {name=p5 sig_type=std_logic lab=VSS_S}
C {devices/lab_pin.sym} -460 -90 1 0 {name=p6 sig_type=std_logic lab=VCONT}
C {devices/lab_pin.sym} -280 -110 1 0 {name=p7 sig_type=std_logic lab=V_1}
C {devices/lab_pin.sym} -280 -70 1 0 {name=p1 sig_type=std_logic lab=V_2}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/Esm22_CMOSVCOlowG_v4p2.sym} -370 -90 0 0 {name=x1}
