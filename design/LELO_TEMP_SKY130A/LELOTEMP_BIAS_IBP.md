

Bandgap core. The voltage across the resistor between VR1 and VD2 will be

$$ \Delta V = V_{R1} - V_{D2} = \frac{k T}{q} ln(8 \times 8) $$

since there is a 1-to-8 ratio between the bipolars, and a 1-to-8 ratio in the
current mirror.

The current in the resistor will be

$$ I_{R} = \frac{\Delta V}{(4 + 8) \times RPPO}$$

Where $RPPO$ is the unit resistor, nominally 7.53 k $\Omega$.

The $V_C$ is a bit more complicated, but can be calculated to be 

$$ V_D = \frac{kT}{q}(\ell  - 3 \ln T) + V_G $$ 

where

$$ \ell= \ln{I_D} - \ln{\left (Aq\frac{D_n}{L_n N_A} +
\frac{D_p}{L_p N_D}\right)}  - 2 \ln{\sqrt{B_c B_v}} $$

where $A$ is the area of the diode, $I_D$ the current in the diode, $D_n,D_p$ are the diffusion constants for
electrons and holes. $L_n,L_p$ are the diffusion lengths, $N_A,N_D$ are the
acceptor and donor concentration.  and $B_c,B_v$ are

$$ B_c = 2 \left[\frac{2 \pi  k m_n^*}{h^2}\right]^{3/2} \text{  } B_v = 2
\left[\frac{2 \pi  k m_p^*}{h^2}\right]^{3/2} $$

where $m_n,m_p$ are the effective mass of electrons and holes and $h$ is
Planck's constant.

Obviously. 

Not really. 

But it is understandable. 

See [Diodes](https://analogicus.com/aic2026/2024/10/25/Diodes.html#forward-voltage-temperature-dependence)


| Temperature [C]        | -40  | 25   | 125  |
|------------------------|------|------|------|
| Estimated Current [uA] | 0.96 | 1.18 | 1.48 |
| Estimated VC           | 0.84 | 0.74 | 0.58 |
| Estimated Delta V      | 83   | 106  | 142  |

The startup circuit on the left side will ensure that the LPI node is pulled
down when the circuit starts up. The PWRUP will enable the NMOS between LPI and
VS2. The diode connected NMOS between VS1 and VS2 lmits the current.  The PMOS
will eventually turn off the startup path when VR1 is high enough.

The diode connected transistor on the right side is to clamp the voltage between
VR1 and VD2. If the current is too high, then a high voltage on VR1 can turn off
the PMOS in the OTA, and increase settling time.

