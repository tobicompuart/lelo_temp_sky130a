v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -340 -220 {}
N 70 -550 70 -510 {lab=VDPWR}
N 70 -430 70 -400 {lab=VGND}
N -40 -520 -40 -490 {lab=VDPWR}
N -40 -520 70 -520 {lab=VDPWR}
N -40 -450 -40 -420 {lab=VGND}
N -40 -420 70 -420 {lab=VGND}
N 110 -470 190 -470 {lab=TIE_L}
N 250 -470 300 -470 {lab=uio_oe[7:0]}
N 300 -470 370 -470 {lab=uio_oe[7:0]}
N 180 -220 230 -220 {lab=#net1}
N 310 -220 380 -220 {lab=uo_out[0]}
N 270 -260 310 -260 {lab=VDPWR}
N 270 -180 310 -180 {lab=VGND}
N 130 -220 180 -220 {lab=#net1}
N -330 -240 -290 -240 {lab=VDPWR}
N -330 -160 -330 -130 {lab=VGND}
N -290 -200 -170 -200 {lab=#net2}
N -440 -200 -370 -200 {lab=ui_in[0]}
N -220 -220 -170 -220 {lab=#net3}
N -220 -180 -170 -180 {lab=VGND}
C {LELO_TEMP_SKY130A/LELO_TEMP.sym} -20 -200 0 0 {name=x1}
C {devices/opin.sym} 370 -540 0 0 {name=p4 lab=uo_out[7:0]}
C {devices/opin.sym} 370 -500 0 0 {name=p6 lab=uio_out[7:0]}
C {JNW_TR_SKY130A/JNWTR_TAPCELLB_CV.sym} -40 -470 0 0 {name=x8 }
C {JNW_TR_SKY130A/JNWTR_TIEL_CV.sym} 70 -430 0 0 {name=x9 }
C {devices/lab_wire.sym} 70 -550 0 0 {name=p30 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} 70 -400 0 0 {name=p31 sig_type=std_logic lab=VGND}
C {sky130_fd_pr/res_generic_m4.sym} 220 -470 1 0 {name=R1[7:0]
W=0.3
L=0.3
model=res_generic_m4
mult=1}
C {devices/opin.sym} 370 -470 0 0 {name=p32 lab=uio_oe[7:0]}
C {devices/lab_wire.sym} 170 -470 0 0 {name=p7 sig_type=std_logic lab=TIE_L}
C {devices/ipin.sym} -490 -620 0 0 {name=p1 lab=VDPWR}
C {devices/ipin.sym} -480 -40 0 0 {name=p2 lab=VGND}
C {devices/ipin.sym} -490 -540 0 0 {name=p3 lab=ui_in[7:0]}
C {devices/ipin.sym} -490 -470 0 0 {name=p5 lab=uio_in[7:0]}
C {devices/ipin.sym} -490 -350 0 0 {name=p8 lab=ena}
C {devices/ipin.sym} -490 -250 0 0 {name=p10 lab=rst_n}
C {devices/lab_wire.sym} 380 -220 0 0 {name=p12 sig_type=std_logic lab=uo_out[0]}
C {JNW_TR_SKY130A/JNWTR_BFX1_CV.sym} 230 -220 0 0 {name=x5 }
C {devices/lab_wire.sym} 310 -260 0 0 {name=p15 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} 310 -180 0 0 {name=p17 sig_type=std_logic lab=VGND}
C {JNW_TR_SKY130A/JNWTR_BFX1_CV.sym} -370 -200 0 0 {name=x10 }
C {devices/lab_wire.sym} -290 -240 0 0 {name=p33 sig_type=std_logic lab=VDPWR}
C {devices/lab_wire.sym} -330 -130 0 0 {name=p34 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} -440 -200 0 0 {name=p25 sig_type=std_logic lab=ui_in[0]}
C {devices/lab_wire.sym} -170 -180 0 0 {name=p9 sig_type=std_logic lab=VGND}
C {devices/lab_wire.sym} -170 -220 0 0 {name=p11 sig_type=std_logic lab=VDPWR}
