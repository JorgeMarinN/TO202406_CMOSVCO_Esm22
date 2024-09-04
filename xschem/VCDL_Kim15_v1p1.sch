v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -340 -50 -300 -50 { lab=#net1}
N -340 -50 -340 60 { lab=#net1}
N -340 60 -300 60 { lab=#net1}
N -260 -20 -260 30 { lab=#net2}
N -260 -130 -260 -80 { lab=#net3}
N -260 -50 -230 -50 { lab=#net3}
N -230 -100 -230 -50 { lab=#net3}
N -260 60 -230 60 { lab=VSS}
N -230 60 -230 110 { lab=VSS}
N -260 90 -260 110 { lab=VSS}
N 500 0 560 0 { lab=VOUT}
N -150 110 -150 130 {
lab=VSS}
N -470 -130 -440 -130 {
lab=VCONT}
N -260 110 -230 110 {
lab=VSS}
N -260 -100 -230 -100 {
lab=#net3}
N -150 -50 -110 -50 { lab=#net2}
N -150 -50 -150 60 { lab=#net2}
N -150 60 -110 60 { lab=#net2}
N -70 -20 -70 30 { lab=#net4}
N -70 -130 -70 -80 { lab=#net3}
N -70 -50 -40 -50 { lab=#net3}
N -40 -100 -40 -50 { lab=#net3}
N -70 60 -40 60 { lab=VSS}
N -40 60 -40 110 { lab=VSS}
N -70 90 -70 110 { lab=VSS}
N -70 110 -40 110 {
lab=VSS}
N -70 -100 -40 -100 {
lab=#net3}
N -520 -50 -480 -50 { lab=VIN}
N -520 -50 -520 60 { lab=VIN}
N -520 60 -480 60 { lab=VIN}
N -440 -20 -440 30 { lab=#net1}
N -440 -130 -440 -80 { lab=#net3}
N -440 -50 -410 -50 { lab=#net3}
N -410 -100 -410 -50 { lab=#net3}
N -440 60 -410 60 { lab=VSS}
N -410 60 -410 110 { lab=VSS}
N -440 90 -440 110 { lab=VSS}
N -440 110 -410 110 {
lab=VSS}
N -440 -100 -410 -100 {
lab=#net3}
N -440 -130 -70 -130 {
lab=#net3}
N -410 110 -70 110 {
lab=VSS}
N -550 0 -520 0 {
lab=VIN}
N -440 0 -340 0 {
lab=#net1}
N -260 0 -150 0 {
lab=#net2}
N 40 -50 80 -50 { lab=#net4}
N 40 -50 40 60 { lab=#net4}
N 40 60 80 60 { lab=#net4}
N 120 -20 120 30 { lab=#net5}
N 120 -130 120 -80 { lab=#net3}
N 120 -50 150 -50 { lab=#net3}
N 150 -100 150 -50 { lab=#net3}
N 120 60 150 60 { lab=VSS}
N 150 60 150 110 { lab=VSS}
N -70 0 40 0 {
lab=#net4}
N -70 -130 120 -130 {
lab=#net3}
N 120 -100 150 -100 {
lab=#net3}
N -40 110 150 110 {
lab=VSS}
N 120 90 120 110 {
lab=VSS}
N 230 -50 270 -50 { lab=#net5}
N 230 -50 230 60 { lab=#net5}
N 230 60 270 60 { lab=#net5}
N 310 -20 310 30 { lab=#net6}
N 310 -50 340 -50 { lab=#net3}
N 310 60 340 60 { lab=VSS}
N 340 60 340 110 { lab=VSS}
N 120 0 230 0 {
lab=#net5}
N 420 -50 460 -50 { lab=#net6}
N 420 -50 420 60 { lab=#net6}
N 420 60 460 60 { lab=#net6}
N 500 -20 500 30 { lab=VOUT}
N 500 -50 530 -50 { lab=#net3}
N 500 60 530 60 { lab=VSS}
N 530 60 530 110 { lab=VSS}
N 310 0 420 0 {
lab=#net6}
N 150 110 530 110 {
lab=VSS}
N 310 90 310 110 {
lab=VSS}
N 500 90 500 110 {
lab=VSS}
N 310 -130 310 -80 {
lab=#net3}
N 500 -130 500 -80 {
lab=#net3}
N 340 -100 340 -50 {
lab=#net3}
N 310 -100 340 -100 {
lab=#net3}
N 530 -100 530 -50 {
lab=#net3}
N 500 -100 530 -100 {
lab=#net3}
N 120 -130 500 -130 {
lab=#net3}
C {devices/ipin.sym} -550 0 0 0 {name=p1 lab=VIN}
C {devices/opin.sym} 560 0 0 0 {name=p5 lab=VOUT}
C {devices/iopin.sym} -150 130 1 0 {name=p4 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -280 60 0 0 {name=M1
L=5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -280 -50 0 0 {name=M2
L=5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -470 -130 0 0 {name=p3 lab=VCONT}
C {sky130_fd_pr/nfet_01v8.sym} -90 60 0 0 {name=M3
L=5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -90 -50 0 0 {name=M5
L=5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -460 60 0 0 {name=M6
L=5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -460 -50 0 0 {name=M7
L=5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 100 60 0 0 {name=M8
L=5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 100 -50 0 0 {name=M9
L=5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 290 60 0 0 {name=M4
L=5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 290 -50 0 0 {name=M11
L=5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 480 60 0 0 {name=M12
L=5
W=2
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 480 -50 0 0 {name=M13
L=5
W=5
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
