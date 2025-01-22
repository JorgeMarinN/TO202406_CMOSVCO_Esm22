v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 60 -240 60 -220 {
lab=OUT}
N -10 -300 20 -300 {
lab=IN}
N -10 -240 -10 -190 {
lab=IN}
N -10 -190 20 -190 {
lab=IN}
N -40 -240 -10 -240 {
lab=IN}
N 60 -360 60 -330 {
lab=VDD}
N 60 -160 60 -120 {
lab=VSS}
N 60 -190 80 -190 {
lab=VSS}
N 80 -190 80 -120 {
lab=VSS}
N 60 -300 80 -300 {
lab=VDD}
N 80 -360 80 -300 {
lab=VDD}
N 60 -240 190 -240 {
lab=OUT}
N 70 -360 80 -360 {
lab=VDD}
N 70 -370 70 -360 {
lab=VDD}
N 190 -180 220 -180 {
lab=OUT}
N 190 -240 190 -180 {
lab=OUT}
N 60 -120 80 -120 {
lab=VSS}
N -10 -300 -10 -240 {
lab=IN}
N 60 -270 60 -240 {
lab=OUT}
N 60 -360 70 -360 {
lab=VDD}
C {devices/ipin.sym} -40 -240 0 0 {name=p3 lab=IN}
C {devices/iopin.sym} 70 -370 3 0 {name=p4 lab=VDD}
C {devices/iopin.sym} 190 -420 3 0 {name=p1 lab=VH}
C {devices/opin.sym} 220 -180 0 0 {name=p2 lab=OUT}
C {devices/iopin.sym} 70 -120 1 0 {name=p6 lab=VSS}
C {sg13g2_pr/sg13_lv_pmos.sym} 40 -300 0 0 {name=M2
l=0.15u
w=1.0u
ng=1
m=5
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_hv_nmos.sym} 40 -190 2 1 {name=M1
l=0.22u
w=10u
ng=1
m=1200
model=sg13_hv_nmos
spiceprefix=X
}
