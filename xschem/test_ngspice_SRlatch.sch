v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 460 -480 1260 -230 {flags=graph
y1=0

ypos1=0.27422849
ypos2=2.1272524
divy=5
subdivy=1
unity=1
x1=-1.1e-07
x2=9.9e-07
divx=5
subdivx=1
node="a_s
a_r
a_en
a_out"
color="7 8 9 10"
dataset=0
unitx=n
digital=1
y2=4}
C {devices/lab_pin.sym} 230 -110 0 0 {name=p1 lab=A_VDD}
C {devices/lab_pin.sym} 530 -160 0 1 {name=p2 lab=A_OUT}
C {devices/lab_pin.sym} 230 -170 0 0 {name=p3 lab=A_S}
C {devices/lab_pin.sym} 230 -150 0 0 {name=p4 lab=A_R}
C {devices/lab_pin.sym} 230 -90 0 0 {name=p5 lab=A_GND}
C {devices/code_shown.sym} 10 -630 0 0 {name=NGSPICE
only_toplevel=true
value="* this option enables mos model bin 
* selection based on W/NF instead of W
.opton wnflag=1
va_vdd a_vdd 0 dc 3.3
va_gnd a_gnd 0 dc 0
va_s a_s 0 pulse 0 3.3 10n 0.1n 0.1n 83n 141n
va_r a_r 0 pulse 0 3.3 2n 0.1n 0.1n 25n 50n
va_en a_en 0 dc 3.3
.control
save all
tran 0.2n 1100n 
write test_ngspice_SRlatch.raw
.endc
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Stefan Schippers"}
C {devices/launcher.sym} 745 -155 0 0 {name=h4 
descr="Select arrow and 
Ctrl-Left-Click to load/unload waveforms" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw
"
}
C {devices/iopin.sym} 90 -150 0 1 { name=p6 lab=A_VDD }
C {devices/ipin.sym} 90 -240 0 0 { name=p7 lab=A_S}
C {devices/iopin.sym} 90 -190 0 1 { name=p8 lab=A_GND }
C {devices/ipin.sym} 90 -280 0 0 { name=p9 lab=A_R}
C {devices/opin.sym} 160 -240 0 0 { name=p10 lab=A_OUT }
C {devices/ipin.sym} 90 -320 0 0 { name=p11 lab=A_EN}
C {devices/lab_pin.sym} 230 -130 0 0 {name=p12 lab=A_EN}
C {/foss/designs/TO202406_CMOSVCO_Esm22/xschem/ngspice_SRlatch.sym} 380 -140 0 0 {name=x1}
