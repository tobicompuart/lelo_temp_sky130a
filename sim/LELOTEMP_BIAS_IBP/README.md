

#### Loop stability (lstb)

Check stability



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
|**Gain Margin**|**gm\_db** || **Spec**  | **-50.00** | **-10.00** | **-10.00** | **dB** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | -20.15 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|-33.24 | -19.12 | -13.87 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|-21.54 | -20.15 | -18.76 | |
|**DC gain**|**lf\_gain** || **Spec**  | **25.00** | **40.00** | **55.00** | **dB** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 42.54 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|40.47 | 42.58 | 45.32 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|40.69 | 42.54 | 44.39 | |
|**Phase Margin**|**pm\_deg** || **Spec**  | **45.00** | **60.00** | **90.00** |  |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 70.73 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|52.10 | 68.01 | 86.00 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|67.11 | 70.74 | 74.37 | |
|**Unity Gain Frequency**|**ug** || **Spec**  | **0.40** | **15.00** | **100.00** | **MHz** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 4.59 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|0.50 | 5.25 | 10.41 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|3.58 | 4.60 | 5.62 | |
|**PMOS gate**|**v(lpo)** || **Spec**  | **0.45** | **0.70** | **1.10** | **V** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 0.76 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|0.53 | 0.78 | 1.05 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|0.74 | 0.76 | 0.78 | |
|**Delta diode voltage**|**vd** || **Spec**  | **80.00** | **106.00** | **150.00** | **mV** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 109.27 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|84.64 | 115.01 | 145.76 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|104.54 | 109.29 | 114.03 | |
|**Output current**|**i(v1)** || **Spec**  | **0.50** | **1.00** | **2.00** | **uA** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 1.23 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|0.88 | 1.15 | 1.73 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|0.83 | 1.23 | 1.62 | |
|**VD Error**|**vdiff** || **Spec**  | **-6.00** | **0.00** | **6.00** | **mV** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 0.47 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|-0.01 | 0.41 | 1.46 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-28.55**</span> | -0.03 | <span style='color:red'>**28.48**</span> | |

#### Transient (tran)

Check settling time and current variation



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**t\_settle** || **Spec**  | **0.01** | **0.05** | **2.00** | **us** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 0.53 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.27 | 0.44 | <span style='color:red'>**2.20**</span> | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.39 | 0.52 | 0.65 | |
||**i0** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.161 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.808 | 1.170 | 1.665 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.774 | 1.141 | 1.509 | |
||**i1** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.158 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.805 | 1.167 | 1.661 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.811 | 1.144 | 1.477 | |
||**i2** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.155 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.803 | 1.164 | 1.657 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.752 | 1.148 | 1.544 | |
||**i3** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.152 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.800 | 1.160 | 1.652 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.763 | 1.125 | 1.488 | |
||**idd** || **Spec**  | **5.000** | **30.000** | **60.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 25.416 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|11.418 | 26.197 | 49.120 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|21.208 | 25.135 | 29.062 | |

#### DC (dc)

Check temperature performance



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**ibp\_err\_max** || **Spec**  | **-30.00** | **0.00** | **20.00** | **nA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 8.43 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|7.47 | 8.45 | 9.64 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|3.86 | 8.58 | 13.31 | |
||**ibp\_err\_min** || **Spec**  | **-30.00** | **0.00** | **20.00** | **nA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | -19.86 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|-23.37 | -19.93 | -17.36 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|-25.94 | -19.80 | -13.66 | |
||**imax** || **Spec**  | **0.50** | **0.00** | **2.00** | **uA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 1.45 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|1.29 | 1.45 | 1.66 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|1.11 | 1.46 | 1.81 | |
||**imin** || **Spec**  | **0.50** | **0.00** | **2.00** | **uA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 0.91 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|0.81 | 0.91 | 1.05 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|0.57 | 0.93 | 1.28 | |
||**a\_per\_c** || **Spec**  | **1.00** | **3.00** | **5.00** | **nA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 3.25 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|2.87 | 3.25 | 3.73 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|2.95 | 3.24 | 3.53 | |

