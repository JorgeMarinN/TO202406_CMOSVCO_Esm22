v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -454 -200 -440 -200 {
lab=Vg_M1_gd}
N -454 -160 -440 -160 {
lab=Vg_M2_gd}
N -130 -120 -130 -90 {
lab=Vdd}
N -130 -30 -130 -10 {
lab=GND}
N -410 -120 -410 -90 {
lab=Vg_M1}
N -410 -30 -410 -10 {
lab=GND}
N -410 30 -410 60 {
lab=Vg_M2}
N -410 120 -410 140 {
lab=GND}
N -230 -180 -230 -170 {
lab=Vo}
N -350 -140 -350 -130 {
lab=GND}
N -230 -180 -200 -180 {
lab=Vo}
N -260 -180 -230 -180 {
lab=Vo}
N -350 -300 -350 -280 {
lab=Vdd}
N -350 -240 -350 -220 {
lab=VH}
N -715 -460 -685 -460 {
lab=VDIG}
N -385 -460 -365 -460 {
lab=VH}
N -365 -480 -365 -460 {
lab=VH}
N -385 -420 -345 -420 {
lab=Vg_M2_gd}
N -715 -560 -685 -560 {
lab=VDIG}
N -385 -560 -365 -560 {
lab=VH}
N -365 -580 -365 -560 {
lab=VH}
N -385 -520 -345 -520 {
lab=Vg_M1_gd}
N -725 -510 -685 -510 {
lab=GND}
N -685 -520 -685 -510 {
lab=GND}
N -725 -410 -685 -410 {
lab=GND}
N -685 -420 -685 -410 {
lab=GND}
N -699 -540 -685 -540 {
lab=Vg_M1}
N -699 -440 -685 -440 {
lab=Vg_M2}
N -600 125 -600 145 { lab=GND}
N -600 15 -600 65 { lab=VDIG}
C {lab_pin.sym} -350 -298 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -454 -200 0 0 {name=p2 sig_type=std_logic lab=Vg_M1_gd}
C {lab_pin.sym} -454 -160 0 0 {name=p3 sig_type=std_logic lab=Vg_M2_gd}
C {lab_pin.sym} -206 -180 2 0 {name=p4 sig_type=std_logic lab=Vo}
C {code.sym} -1230 -310 0 0 {name=POWER_MOS_Parameters only_toplevel=false 

value="
.param temp=27
.param mult_M1 = 2400
.param w_M1 =10u 
*.param l_M1 = 0.2u ** Posee mayor capacidad de corriente, pero en sub-umbral conduce mucha corriente
.param l_M1 = 0.22u
.param ng_M1 = 1

.param mult_M2 = 1200
.param w_M2 =10u 
.param l_M2 =0.25u
.param ng_M2 =1



"}
C {vsource.sym} -130 -60 0 0 {name=Vdd value=\{Vdd\} savecurrent=false}
C {lab_pin.sym} -130 -120 0 0 {name=p5 sig_type=std_logic lab=Vdd}
C {gnd.sym} -130 -10 0 0 {name=l2 lab=GND}
C {vsource.sym} -410 90 0 0 {name=Vg2 value="PULSE(0 \{VH\} \{TdR\} \{TR\} \{TF\} \{T*D-TdR-TdF\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -410 -120 0 0 {name=p6 sig_type=std_logic lab=Vg_M1}
C {gnd.sym} -410 -10 0 0 {name=l4 lab=GND}
C {vsource.sym} -410 -60 0 0 {name=Vg1 value="PULSE(0 \{VH\} 0 \{TR\} \{TF\} \{T*D\} \{T\} 0)" savecurrent=false}
C {lab_pin.sym} -410 30 0 0 {name=p7 sig_type=std_logic lab=Vg_M2}
C {gnd.sym} -410 140 0 0 {name=l5 lab=GND}
C {code.sym} -1000 65 0 0 {name=Simulation_Parameters only_toplevel=false 

value="
.param Vdd = 3.3
.param VH = 3.3
.param Del = 0

.param D = 0.425
.param T = 0.5u
.param TR = 13.5n
.param TF = 13.5n
.param TdR = 5n
.param TdF = 5n


.param temp = 27

"}
C {devices/code.sym} -1230 -110 0 0 {name=Transient_simulation only_toplevel=false 

value="
.save all
+ @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
+ @m.x1.xm2.msky130_fd_pr__nfet_g5v0d10v5[id]
.param SimTime = 5u

.control
reset
set color0 = white
tran 1n 30u
let Io = i(v.x1.V_Io)
let Id_M1 = @m.x1.xm1.msky130_fd_pr__pfet_g5v0d10v5[id]
let Id_M2 = @m.x1.xm2.msky130_fd_pr__nfet_g5v0d10v5[id]
let Po = Io*v(Vo)
let I_in = i(V_Iin)
let Pin = I_in*v(Vdd)
let Vsd_M1 = v(Vdd) - v(x1.Vc)
let Vds_M2 = v(x1.Vc)
let P_M1 = Vsd_M1*Id_M1
let P_M2 = -Vds_M2*Id_M2
let DataMeasBegin = SimTime-1u

meas tran Vo_mean AVG v(Vo) from=20u to=30u
meas tran Io_mean AVG Io from=20u to=30u
meas tran Po_mean AVG Po from=20u to=30u
meas tran Pin_mean AVG Pin from=20u to=30u
meas tran P_M1_mean AVG P_M1 from=20u to=30u
meas tran P_M2_mean AVG P_M2 from=20u to=30u

let eff = 100*Po_mean/Pin_mean
let loss_M1 = 100*P_M1_mean/Pin_mean
let loss_M2 = 100*P_M2_mean/Pin_mean
let sumaPot = eff+loss_M1+loss_M2
print eff loss_M1 loss_M2 sumaPot

plot Io i(v.x1.V_IL)
plot Id_M1 Id_M2
plot v(Vo)
plot Po Pin
*plot P_M1 P_M2
plot v(x1.Vc)
plot v(Vg_M1) v(Vg_M2)
.endc



.end
"}
C {launcher.sym} -840 -100 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
*tclcommand="xschem annotate_op"}
C {gnd.sym} -350 -130 0 0 {name=l3 lab=GND}
C {code_shown.sym} -971 -309 0 0 {name=RLC_Parameters only_toplevel=false 
value="
*Parametros
*Filtro
.param L = 4u
*.param R = 6.67
.param R = 120
.param C = 250n


"}
C {ammeter.sym} -350 -260 0 0 {name=V_Iin savecurrent=true spice_ignore=0}
C {/home/designer/shared/TO202406_CMOSVCO_Esm22/xschem/Modulos/DCDC_Buck.sym} -340 -160 0 0 {name=X1}
C {devices/code.sym} -1230 70 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval(@value )"
value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt
.include $::SKYWATER_STDCELLS/sky130_fd_sc_hd.spice
"
spice_ignore=false
place=header}
C {devices/lab_wire.sym} -715 -460 0 0 {name=l1 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} -715 -560 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} -365 -580 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} -365 -480 0 1 {name=l36 sig_type=std_logic lab=VH
}
C {LS_FINAL.sym} -535 -540 0 0 {name=x4}
C {LS_FINAL.sym} -535 -440 0 0 {name=x5}
C {lab_pin.sym} -699 -540 0 0 {name=p8 sig_type=std_logic lab=Vg_M1}
C {lab_pin.sym} -699 -440 0 0 {name=p9 sig_type=std_logic lab=Vg_M2}
C {lab_pin.sym} -346 -520 0 1 {name=p10 sig_type=std_logic lab=Vg_M1_gd}
C {lab_pin.sym} -346 -420 0 1 {name=p11 sig_type=std_logic lab=Vg_M2_gd}
C {devices/lab_pin.sym} -350 -225 0 1 {name=l6 sig_type=std_logic lab=VH
}
C {devices/vsource.sym} -600 95 0 0 {name=V8 value=3.3}
C {devices/gnd.sym} -600 145 0 0 {name=l8 lab=GND}
C {devices/lab_wire.sym} -600 15 0 0 {name=l9 sig_type=std_logic lab=VDIG}
C {gnd.sym} -725 -510 0 0 {name=l7 lab=GND}
C {gnd.sym} -725 -410 0 0 {name=l10 lab=GND}
