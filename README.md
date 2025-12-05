
[![GDS](../../actions/workflows/gds.yaml/badge.svg)](../../actions/workflows/gds.yaml)
[![DRC](../../actions/workflows/drc.yaml/badge.svg)](../../actions/workflows/drc.yaml)
[![LVS](../../actions/workflows/lvs.yaml/badge.svg)](../../actions/workflows/lvs.yaml)
[![DOCS](../../actions/workflows/docs.yaml/badge.svg)](../../actions/workflows/docs.yaml)

# Who

Carsten Wulff

# Why

Example of a temperature sensor 

# How

The thermal voltage  is

$$ U_T = \frac{kT}{q} $$

Use a bandgap circuit to make a PTAT current

$$ I_{PTAT} = \Delta V/R = ln(N) U_T/R  $$

Where the N is the size difference between the diodes or bipolars in the bandgap

The CTAT diode voltage <https://analogicus.com/aic2026/2024/10/25/Diodes.html>
is given by 

$$ V_D = U_T(\ell  - 3 \ln T) + V_G $$ 

Where $\ell$ is a constant given by. 

$$ \ell= \ln{I_D} - \ln{\left (Aq\frac{D_n}{L_n N_A} +
\frac{D_p}{L_p N_D}\right)}  - 2 \ln{\sqrt{B_c B_v}} $$


Now charge a capacitor using the current until the voltage reaches $V_D$

$$ dt = \frac{C}{I} V_D = \frac{V_D RC}{U_T ln(N)}$$

or 

$$ f =  \frac{ln(N)}{RC} \frac{U_T}{V_D} $$

Assume that the first part is constant with temperature (R will change a bit).

The second part of the equation is a numerator that increases with temperature
and denominator that decreases with temperature



# What


| What          | Cell/Name                              |
|:--------------|:--------------------------------------:|
| Schematic     | design/LELO_TEMP_SKY130A/LELO_TEMP.sch |
| Layout        | design/LELO_TEMP_SKY130A/LELO_TEMP.mag |
| Verilog Model | design/LELO_TEMP_SKY130A/LELO_TEMP.v   |
| Verilog TB    | sim/tb_lelo_temp/tb.v                  |
| Analog top TB | sim/LELO_TEMP/tran.spi                 |


# Signal interface


| Signal       | Direction | Domain  | Description                                   |
|:-------------|:---------:|:-------:|:----------------------------------------------|
| VDD_1V8      | Input     | VDD_1V8 | Main supply                                   |
| PWRUP_1V8    | Input     | VDD_1V8 | Power up the temperature dependent oscillator |
| OSC_TEMP_1V8 | Output    | VDD_1V8 | Temperature dependent frequency               |
| VSS          | Input     | Ground  |                                               |

# Key parameters

| Parameter           | Min     | Typ             | Max     | Unit  |
| :---                | :---:   | :---:           | :---:   | :---: |
| Technology          |         | Skywater 130 nm |         |       |
| AVDD                | 1.7     | 1.8             | 1.9     | V     |
| Temperature         | -40     | 27              | 125     | C     |




