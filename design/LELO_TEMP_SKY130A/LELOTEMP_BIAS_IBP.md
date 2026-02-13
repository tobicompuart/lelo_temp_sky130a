# LELOTEMP_BIAS_IBP — hand-drawn PTAT current source

Minimal bandgap (lecture Figure 6): two bipolars at different current density, one resistor, and an OTA. Produces **PTAT current** and **CTAT voltage** (VD1).

## How it works

- **Bipolars** (JNWBIAS_BIPOLAR, 1:8) run at the same current. The difference of their base–emitter voltages is
  \[
  \Delta V_{BE} = V_{D1} - V_{D2} = \frac{kT}{q}\,\ln N
  \]
  with \(N = 8\) (ratio in the block).

- **Resistor** \(R\) (one RPPO8 = \(8\times R_{PPO}\)) is between the top node (VR1) and VD2. The OTA forces **VR1 = VD1**, so the voltage across \(R\) is \(\Delta V_{BE}\).

- **PTAT current:** \(I = \Delta V_{BE} / R\). Brought out on **IBP_1U[3:0]** (one net in this design).

- **CTAT voltage:** Node **VD1** is a diode voltage; it decreases with temperature. Brought out on pin **VD1**.

## What’s in the schematic

| Block | Role |
|-------|------|
| **OTA** | Compares VD1 and VR1; output drives both PMOS gates so VR1 = VD1. |
| **JNWBIAS_BIPOLAR** | Two bipolars 1:8; pins VD1, VD2, VSS. |
| **RPPO8** | Single resistor between VR1 and VD2. |
| **2 PMOS** | One branch to VD1, one to VR1 and IBP output; same gate from OTA. |

No startup or compensation; simulation uses `.ic` for convergence.

## Design values

At 27 °C: \(V_T = kT/q \approx 25.85\;\mathrm{mV}\). For \(N = 8\), \(\Delta V_{BE} \approx 53.8\;\mathrm{mV}\).

- **Target current** \(I_D\) (e.g. 1 µA) → \(R = \Delta V_{BE} / I_D\).
- **This design:** \(R = 8\times R_{PPO}\) → current set by RPPO value (e.g. ~1–1.5 µA typical).

**Pins:** VDD_1V8, VSS, PWRUP_1V8, PWRUP_N_1V8, LPI, LPO, IBP_1U[3:0], VD1.

See [References and bias](https://analogicus.com/aic2026/references_and_bias) for theory.
