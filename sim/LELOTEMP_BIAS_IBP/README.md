

#### Loop stability (lstb)

Check stability



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
|**Gain Margin**|**gm\_db** || **Spec**  | **-50.00** | **-10.00** | **-10.00** | **dB** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | -16.40 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|-44.30 | -15.76 | -11.41 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|-17.69 | -16.59 | -15.48 | |
|**DC gain**|**lf\_gain** || **Spec**  | **25.00** | **40.00** | **55.00** | **dB** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 42.15 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**22.26**</span> | 42.10 | 45.69 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|40.42 | 42.13 | 43.84 | |
|**Phase Margin**|**pm\_deg** || **Spec**  | **45.00** | **60.00** | **90.00** |  |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 62.76 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|<span style='color:orange'>**44.75**</span> | 59.68 | <span style='color:orange'>**93.99**</span> | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|60.23 | 63.26 | 66.28 | |
|**Unity Gain Frequency**|**ug** || **Spec**  | **0.40** | **15.00** | **100.00** | **MHz** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 5.87 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**0.07**</span> | 6.80 | 12.82 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|4.91 | 5.75 | 6.58 | |
|**PMOS gate**|**v(lpo)** || **Spec**  | **0.45** | **0.70** | **1.10** | **V** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 0.76 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|<span style='color:orange'>**0.43**</span> | 0.78 | 1.05 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|0.73 | 0.76 | 0.78 | |
|**Delta diode voltage**|**vd** || **Spec**  | **80.00** | **106.00** | **150.00** | **mV** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 109.27 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|84.63 | 115.01 | 145.71 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|105.44 | 109.39 | 113.34 | |
|**Output current**|**i(v1)** || **Spec**  | **0.50** | **1.00** | **2.00** | **uA** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 1.24 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|0.92 | 1.16 | 1.58 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|0.84 | 1.25 | 1.66 | |
|**VD Error**|**vdiff** || **Spec**  | **-6.00** | **0.00** | **6.00** | **mV** |
| | | |<a href='results/lstb_Sch_typical.html'>Sch_typ</a>| | 0.57 |  | |
| | | |<a href='results/lstb_Sch_etc.html'>Sch_etc</a>|0.12 | 0.47 | 2.47 | |
| | | |<a href='results/lstb_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-27.67**</span> | 0.35 | <span style='color:red'>**28.38**</span> | |

#### Transient (tran)

Check settling time and current variation



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**t\_settle** || **Spec**  | **0.01** | **0.05** | **2.00** | **us** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 0.83 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.59 | 1.12 | <span style='color:red'>**4.30**</span> | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.64 | 0.78 | 0.92 | |
||**i0** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.154 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.810 | 1.168 | 1.661 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.736 | 1.169 | 1.601 | |
||**i1** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.153 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.809 | 1.165 | 1.661 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.719 | 1.163 | 1.608 | |
||**i2** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.153 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.808 | 1.163 | 1.660 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.701 | 1.143 | 1.585 | |
||**i3** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 1.152 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|0.800 | 1.163 | 1.660 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|0.726 | 1.150 | 1.575 | |
||**idd** || **Spec**  | **5.000** | **30.000** | **60.000** | **uA** |
| | | |<a href='results/tran_Sch_typical.html'>Sch_typ</a>| | 28.221 |  | |
| | | |<a href='results/tran_Sch_etc.html'>Sch_etc</a>|11.784 | 29.157 | 56.413 | |
| | | |<a href='results/tran_Sch_mc.html'>Sch_3std</a>|23.921 | 28.245 | 32.570 | |

#### DC (dc)

Check temperature performance



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**ibp\_err\_max** || **Spec**  | **-30.00** | **0.00** | **20.00** | **nA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 8.89 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|7.55 | 9.34 | 16.49 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|-2.93 | 10.12 | <span style='color:red'>**23.18**</span> | |
||**ibp\_err\_min** || **Spec**  | **-30.00** | **0.00** | **20.00** | **nA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | -16.44 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|-20.68 | -15.82 | -2.97 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-31.08**</span> | -12.85 | 5.38 | |
||**imax** || **Spec**  | **0.50** | **0.00** | **2.00** | **uA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 1.45 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|1.29 | 1.45 | 1.66 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|1.10 | 1.44 | 1.79 | |
||**imin** || **Spec**  | **0.50** | **0.00** | **2.00** | **uA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 0.91 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|0.81 | 0.91 | 1.05 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|0.55 | 0.92 | 1.30 | |
||**a\_per\_c** || **Spec**  | **1.00** | **3.00** | **5.00** | **nA** |
| | | |<a href='results/dc_Sch_typical.html'>Sch_typ</a>| | 3.26 |  | |
| | | |<a href='results/dc_Sch_etc.html'>Sch_etc</a>|2.77 | 3.26 | 3.75 | |
| | | |<a href='results/dc_Sch_mc.html'>Sch_3std</a>|2.66 | 3.17 | 3.68 | |

