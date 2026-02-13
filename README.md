
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)

# Who

Tobias Horelt

# Why

This repository is the **Milestone 1** delivery for the course project: design of a simple **bandgap circuit** that provides a current proportional to absolute temperature (PTAT) and a voltage complementary to absolute temperature (CTAT). 

- **Goal:** A circuit that turns temperature into PTAT current and CTAT voltage.
- **Design:** Simplified “Figure 6” style bandgap: two bipolars at different current densities (1:8), one resistor, and an OTA in a feedback loop. See [design/LELO_TEMP_SKY130A/LELOTEMP_BIAS_IBP.md](design/LELO_TEMP_SKY130A/LELOTEMP_BIAS_IBP.md) for equations and fitting values.
- **Schematic:** [design/LELO_TEMP_SKY130A/LELOTEMP_BIAS_IBP.sch](design/LELO_TEMP_SKY130A/LELOTEMP_BIAS_IBP.sch)
- **Testbenches:** [sim/LELOTEMP_BIAS_IBP/](sim/LELOTEMP_BIAS_IBP/)

# How

The bandgap was built by trying to follow the lectures. For this milestone, I used the example ip directory lelo_temp_sky130a as a starting point. I also used some of the components from the example design file, but created my own, simpler circuit where I followed the lecture explanations. I deleted the example simulations folder and created a new one where I adjustet the default testbench.

An OTA compares the diode node VD1 with the top of a resistor (VR1) and drives two PMOS so that VR1 = VD1. The resistor (one RPPO8) sits between VR1 and the second bipolar node VD2; the resulting ΔV_BE across it sets a PTAT current. 


