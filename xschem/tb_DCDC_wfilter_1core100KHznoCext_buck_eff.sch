v {xschem version=3.4.2 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {PULSE(VL VH TD TR TF PW PER PHASE) } -380 -120 0 0 0.4 0.4 {}
N -830 -210 -830 -190 { lab=GND}
N -830 -320 -830 -270 { lab=VSS}
N -750 -210 -750 -190 { lab=GND}
N -750 -320 -750 -270 { lab=VH}
N 1490 -800 1550 -800 {
lab=ldo_out}
N 1610 -800 1660 -800 {
lab=ldo_out}
N 1550 -800 1610 -800 {
lab=ldo_out}
N -920 -210 -920 -190 { lab=GND}
N -920 -320 -920 -270 { lab=VDIG}
N -660 -210 -660 -190 { lab=GND}
N -660 -320 -660 -270 { lab=VH_LS}
N 1500 -740 1500 -700 {
lab=VSS}
N 1840 -760 1840 -720 {
lab=GND}
N 1840 -880 1840 -820 {
lab=#net1}
N 1840 -980 1840 -940 {
lab=ldo_out}
N -350 -590 -320 -590 {
lab=VDIG}
N -20 -590 0 -590 {
lab=VH}
N 0 -610 0 -590 {
lab=VH}
N -20 -550 20 -550 {
lab=D1_N}
N -350 -1000 -320 -1000 {
lab=VDIG}
N -20 -1000 0 -1000 {
lab=VH}
N 0 -1020 0 -1000 {
lab=VH}
N -20 -960 20 -960 {
lab=D1}
N -350 -980 -320 -980 {
lab=D1_s}
N -350 -570 -320 -570 {
lab=D1_N_s}
N -360 -950 -320 -950 {
lab=VSS}
N -320 -960 -320 -950 {
lab=VSS}
N -360 -540 -320 -540 {
lab=VSS}
N -320 -550 -320 -540 {
lab=VSS}
N -810 -940 -810 -930 {
lab=D1_s}
N -810 -940 -800 -940 {
lab=D1_s}
N -810 -870 -810 -860 {
lab=VSS}
N -820 -860 -810 -860 {
lab=VSS}
N -810 -670 -810 -660 {
lab=D1_N_s}
N -810 -670 -800 -670 {
lab=D1_N_s}
N -810 -600 -810 -590 {
lab=VSS}
N -820 -590 -810 -590 {
lab=VSS}
N 630 -680 700 -680 {
lab=V_res}
N 880 -680 910 -680 {
lab=#net2}
N 780 -680 820 -680 {
lab=V_inductor}
N 700 -680 720 -680 {
lab=V_res}
N 530 -680 630 -680 {
lab=V_res}
N 530 -810 530 -770 {
lab=#net3}
N 530 -740 550 -740 {
lab=#net3}
N 550 -790 550 -740 {
lab=#net3}
N 530 -790 550 -790 {
lab=#net3}
N 460 -740 490 -740 {
lab=D1}
N 530 -830 530 -810 {
lab=#net3}
N 530 -600 530 -560 {
lab=VSS}
N 530 -630 550 -630 {
lab=VSS}
N 550 -630 550 -580 {
lab=VSS}
N 530 -580 550 -580 {
lab=VSS}
N 450 -630 490 -630 {
lab=D1_N}
N 530 -710 530 -660 {
lab=V_res}
N 530 -940 530 -890 { lab=VH}
C {devices/vsource.sym} -830 -240 0 0 {name=V2 value=0}
C {devices/gnd.sym} -830 -190 0 0 {name=l9 lab=GND}
C {devices/code_shown.sym} -850 -80 0 0 {name=s1 only_toplevel=false value="
.param VIN = 5
.param VDIG = 1.8
.param VH = 5
*113mA
*.param RL = 26
*93mA
.param RL = 32
*82mA
*.param RL = 39
*57mA
*.param RL = 52
*29mA
*.param RL = 104
*14mA
*.param RL = 208
*197mA
*.param RL = 13
.option scale=1e-6
.options itl4=25
.options method=gear
*.option temp=80
.ic v(vout_core)=3
.ic v(V_inductor)=3
.ic v(V_res)=3
*.probe vd(MP2:G:S)
*.save all
*.save v(d1) v(d2) v(d1top_5v) v(d2_5v) v(d2bot_5v) v(d1bot_5v) v(vout) v(vout_core) v(vdd) v(vh) i(v1) i(v5) i(vmeas) v(v_cftop,v_cfbot)
.save v(D1) v(D2) v(D1_N) v(D2_N) v(VOUT_CORE) v(ldo_out) v(vh) i(v3) i(v10) i(v11) v(v_cftop,v_cfbot) v(D1,v_cftop) v(D2,vout_core) v(D2_N,v_cfbot) v(D1_Nv,VSS) v(v_out_ls1) v(v_out_ls2) v(d2_n,v_cfbot) v(D1_s) v(D2_s) v(D2_N_s) v(D1_N_s) v(V_res) i(v9) v(ldo_out)
.save v(neg) v(pos) i(vh) i(v_res)
.save @m.xm4.msky130_fd_pr__nfet_g5v0d10v5[vds]
.param mc_mm_switch=0
*.lib /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.lib /usr/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice ss
*.lib /foss/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice TT
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt
*.include /usr/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
*.include /home/jorge/Documents/Postdoc/share/pdk/sky130A/libs.ref/sky130_fd_sc_hvl/spice/sky130_fd_sc_hvl.spice
.options savecurrents
.control
*set gmin = 1e-20
*save all
*tran 10n 3000u
*tran 5n 0.6m
tran 10n 3m
*write DCDC_v1p4_5MHz_NMOS_PMOS.raw
*wrdata ~/Documents/Postdoc/chipathon2022/3LFCC_AC3E/xschem/dev_switches/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout) tran.i(vmeas) tran.v(vdd) tran.i(v3) tran.v(vh) tran.i(v5)
*wrdata /foss/designs/personal/3LFCC_AC3E/xschem/hierarchy_sch/DCDC_5V_FINAL/3LFCC_v1p4.txt tran.v(vout_core) tran.i(v1)
*wrdata /foss/designs/personal/3LFCC_AC3E/xschem/testbench/TopModule/3LFCC_v1p5_topmodule_wfilter_jmtest.txt tran.v(vout_core) tran.i(v3) tran.i(v4) tran.i(v9)
*wrdata /foss/designs/personal/3LFCC_v1p5_topmodule_wfilter_onecore10MHz_3lfcc23.txt tran.v(vout_core) tran.i(v3) tran.i(v4) tran.i(v9)
wrdata /foss/designs/Open3LFCC_V2/data/DCDCnLDO_wfilter_1core100KHznoCext_buck_eff.txt tran.v(vh) tran.i(vh) tran.v(ldo_out) tran.i(vldo_out)


*Relación D1 D2 para combinar estados
plot v(D1) v(D2)+5	v(v_cftop,v_cfbot)
*plot v(D1_N) v(D2_N)

*Relación Pulso P y N para acondicionar tiempos muertos (reducir peaks)
plot v(D1) v(D1_N) v(v_cftop,v_cfbot) v(vout_core)
*plot v(D1) v(D1_N)+5 
plot -i(v3)
plot -i(v4)
*plot i(v18) i(v19)
plot i(v10) i(v11)
*plot v(D1) v(D1_N)	 v(D2) v(D2_N) i(v3) v(v_cftop,v_cfbot)
plot v(D1_N_s) v(D2_N_s)+2 v(D2_s)+4 v(D1_s)+6 i(v3)
plot v(D1_N_s) v(D1_s) v(D2_N_s) v(D2_s) i(v3)
plot v(V_res)
*plot v(v_cftop,v_cfbot)
*plot i(v9)
*plot v(vout_core)
plot v(vout_core) v(ldo_out)
plot v(neg)
plot v(vh)
plot i(vh)
plot i(vldo_out)
plot i(v_res)

*let id20  = @m.xm20.msky130_fd_pr__nfet_g5v0d10v5[id]
*plot id20


*Revisión de estados del convertidor en base a señal de Flycap (caso Cap_ext omitido para ver bien formas de onda de flycap)
*plot v(v_cftop,v_cfbot) v(vout_core) i(v3)

*plot v(v_cftop,v_cfbot) v(D1) v(D2)
*plot v(v_cftop,v_cfbot) v(D2) v(D2_N)
*plot v(v_cftop,v_cfbot) v(D1) v(D1_N)
*plot v(v_cftop,v_cfbot) v(vout_core) 

**Problema actual, eficiencia no se logra calcular debido a que no transicionan bien todo los estados, (Cuando el Flycap esta flotante no esta consumiendo energía, es decir la carga no esta conectada a la fuente de entrada...)
** Si bien D1- D1_N y D2- D2_N estan con sus respectivos tiempos muertos (redución de peaks), falta sincronizar bien D1 con D2 para lograr la conexión correcta para que la carga se conecte a la fuente en estado de flycap flotante.

.endc
"}
C {devices/vsource.sym} -750 -240 0 0 {name=VH value=\{VH\}}
C {devices/gnd.sym} -750 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -750 -320 0 0 {name=l24 sig_type=std_logic lab=VH}
C {devices/vsource.sym} -920 -240 0 0 {name=V8 value=\{VDIG\}}
C {devices/gnd.sym} -920 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -920 -320 0 0 {name=l24 sig_type=std_logic lab=VDIG}
C {devices/lab_wire.sym} -830 -320 0 0 {name=l15 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -660 -240 0 0 {name=V4 value=\{VH\}}
C {devices/gnd.sym} -660 -190 0 0 {name=l23 lab=GND}
C {devices/lab_wire.sym} -660 -320 0 0 {name=l24 sig_type=std_logic lab=VH_LS}
C {devices/capa.sym} 1500 -770 0 0 {name=C4
m=1
value=47u
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 1500 -700 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {devices/res.sym} 1840 -790 0 0 {name=RL
value=\{RL\}
footprint=1206
device=resistor
m=1}
C {devices/vsource.sym} 1840 -910 0 0 {name=Vldo_out value=0}
C {devices/gnd.sym} 1840 -720 0 0 {name=l52 lab=GND}
C {devices/lab_pin.sym} 1840 -980 2 0 {name=p1 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} -350 -570 2 1 {name=l14 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -350 -590 0 0 {name=l4 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 20 -550 0 1 {name=l6 sig_type=std_logic lab=D1_N
}
C {devices/lab_pin.sym} -350 -980 2 1 {name=l5 sig_type=std_logic lab=D1_s
}
C {devices/lab_wire.sym} -350 -1000 0 0 {name=l11 sig_type=std_logic lab=VDIG}
C {devices/lab_pin.sym} 0 -1020 0 1 {name=l125 sig_type=std_logic lab=VH
}
C {devices/lab_pin.sym} 20 -960 0 1 {name=l12 sig_type=std_logic lab=D1
}
C {devices/lab_wire.sym} -360 -950 0 0 {name=l7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -360 -540 0 0 {name=l31 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 0 -610 0 1 {name=l36 sig_type=std_logic lab=VH
}
C {LS_FINAL.sym} -170 -980 0 0 {name=x1}
C {LS_FINAL.sym} -170 -570 0 0 {name=x4}
C {devices/lab_wire.sym} -800 -940 0 1 {name=l8 sig_type=std_logic lab=D1_s}
C {devices/vsource.sym} -810 -630 0 0 {name=V7 value="PULSE(0 1.8 200.0n 5n 5n 3000.0000000000005n 10000.0n)"}
C {devices/lab_pin.sym} -800 -670 0 1 {name=l10 sig_type=std_logic lab=D1_N_s
}
C {devices/lab_wire.sym} -820 -590 0 0 {name=l13 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -820 -860 0 0 {name=l16 sig_type=std_logic lab=VSS}
C {devices/vsource.sym} -810 -900 0 0 {name=V10 value="PULSE(0 1.8 0n 5n 5n 3400.0000000000005n 10000.0n)"}
C {devices/ind.sym} 850 -680 1 0 {name=L37
m=1
value=47u
footprint=1206
device=inductor}
C {devices/lab_wire.sym} 800 -680 1 1 {name=l38 sig_type=std_logic lab=V_inductor}
C {devices/res.sym} 750 -680 1 0 {name=R3
value=2.4
footprint=1206
device=resistor
m=1}
C {devices/lab_wire.sym} 700 -680 1 1 {name=l39 sig_type=std_logic lab=V_res}
C {sky130_fd_pr/pfet_g5v0d10v5.sym} 510 -740 0 0 {name=M3
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
C {sky130_fd_pr/nfet_g5v0d10v5.sym} 510 -630 0 0 {name=M1
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
C {devices/vsource.sym} 530 -860 0 0 {name=V5 value=0}
C {devices/lab_wire.sym} 530 -940 0 0 {name=l18 sig_type=std_logic lab=VH}
C {devices/lab_wire.sym} 530 -560 2 0 {name=l20 sig_type=std_logic lab=VSS}
C {devices/lab_pin.sym} 460 -740 0 0 {name=l21 sig_type=std_logic lab=D1
}
C {devices/lab_pin.sym} 450 -630 0 0 {name=l22 sig_type=std_logic lab=D1_N
}
C {devices/vsource.sym} 910 -650 0 0 {name=V_res value=0}
C {devices/lab_pin.sym} 1840 -980 2 0 {name=p2 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 1660 -800 2 0 {name=p3 sig_type=std_logic lab=ldo_out

}
C {devices/lab_pin.sym} 910 -620 2 0 {name=p4 sig_type=std_logic lab=ldo_out

}
