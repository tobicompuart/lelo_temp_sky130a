v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 310 -100 550 -100 {lab=VSS}
N 290 -790 310 -790 {lab=VDD_1V8}
N 340 -790 640 -790 {lab=VDD_1V8}
N 550 -100 600 -100 {lab=VSS}
N 598 -102 600 -100 {lab=VSS}
N 640 -790 680 -790 {lab=VDD_1V8}
N 680 -790 680 -740 {lab=VDD_1V8}
N 680 -790 920 -790 {lab=VDD_1V8}
N 920 -790 920 -740 {lab=VDD_1V8}
N 800 -710 800 -590 {lab=#net1}
N 730 -710 800 -710 {lab=#net1}
N 720 -710 730 -710 {lab=#net1}
N 800 -710 880 -710 {lab=#net1}
N 810 -380 810 -350 {lab=#net2}
N 810 -350 980 -350 {lab=#net2}
N 980 -350 980 -330 {lab=#net2}
N 770 -380 770 -290 {lab=#net3}
N 770 -290 960 -290 {lab=#net3}
N 980 -250 980 -210 {lab=#net4}
N 790 -380 790 -320 {lab=VD1}
N 640 -320 790 -320 {lab=VD1}
N 640 -320 640 -210 {lab=VD1}
N 920 -680 920 -420 {lab=#net2}
N 920 -420 980 -420 {lab=#net2}
N 980 -420 980 -350 {lab=#net2}
N 680 -680 680 -470 {lab=VD1}
N 640 -470 680 -470 {lab=VD1}
N 640 -470 640 -320 {lab=VD1}
N 610 -260 640 -260 {lab=VD1}
N 310 -790 340 -790 {lab=VDD_1V8}
N 920 -710 960 -710 {lab=VDD_1V8}
N 960 -760 960 -710 {lab=VDD_1V8}
N 920 -760 960 -760 {lab=VDD_1V8}
N 650 -710 680 -710 {lab=VDD_1V8}
N 650 -760 650 -710 {lab=VDD_1V8}
N 650 -760 680 -760 {lab=VDD_1V8}
C {devices/ipin.sym} 300 -790 0 0 {name=p4 lab=VDD_1V8}
C {devices/ipin.sym} 313.9889709803555 -100 0 0 {name=p5 lab=VSS}
C {devices/opin.sym} 1130 -550 0 0 {name=p9 lab=IBP_1U[3:0]}
C {devices/opin.sym} 610 -260 0 1 {name=p2 lab=VD1}
C {devices/ipin.sym} 860 -470 0 1 {name=p3 lab=PWRUP_1V8}
C {devices/ipin.sym} 860 -490 0 1 {name=p1 lab=PWRUP_N_1V8}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 720 -710 0 1 {name=xca1}
C {JNW_ATR_SKY130A/JNWATR_PCH_4C5F0.sym} 880 -710 0 0 {name=xca2}
C {LELO_TEMP_SKY130A/LELOTEMP_OTA.sym} 800 -530 1 1 {name=xad6}
C {JNW_TR_SKY130A/JNWTR_RPPO8.sym} 980 -330 1 0 {name=xac3}
C {JNW_BIAS_SKY130A/JNWBIAS_BIPOLAR.sym} 800 -110 0 0 {name=xe1}
C {cborder/border_xs.sym} 340 -40 0 0 {user="Tobias Horelt" company=""}
