v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {.model todig_3v3 adc_bridge(in_high=2.2 in_low=1.1
+ rise_delay=2n fall_delay=2n)
.model toana_3v3 dac_bridge(out_high=3.3 out_low=0)

.model dsrflop d_srlatch(ic=0 rise_delay=1n fall_delay=1n)

AA2D1 [A_GND] [d_gnd] todig_3v3

AA2D2 [A_S] [d_s] todig_3v3
AA2D3 [A_R] [d_r] todig_3v3
AA2D4 [A_EN] [d_en] todig_3v3

A1 d_s d_r d_en d_gnd d_gnd d_out NULL dsrflop

AD2A1 [d_out] [A_OUT] toana_3v3
}
E {}
C {devices/iopin.sym} 220 -250 0 0 {name=p1 lab=A_VDD}
C {devices/ipin.sym} 180 -190 0 0 {name=p2 lab=A_S}
C {devices/opin.sym} 370 -190 0 0 {name=p3 lab=A_OUT}
C {devices/ipin.sym} 180 -170 0 0 {name=p4 lab=A_R}
C {devices/ipin.sym} 180 -150 0 0 {name=p4 lab=A_EN}
C {devices/iopin.sym} 220 -120 0 0 {name=p5 lab=A_GND}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="J. Marin (from S. Schippers)"}
C {devices/noconn.sym} 220 -250 0 0 {name=l2}
C {devices/noconn.sym} 180 -190 0 1 {name=l3}
C {devices/noconn.sym} 180 -170 0 1 {name=l4}
C {devices/noconn.sym} 220 -120 0 0 {name=l5}
C {devices/noconn.sym} 370 -190 0 0 {name=l6}
C {devices/noconn.sym} 180 -150 0 1 {name=l7}
