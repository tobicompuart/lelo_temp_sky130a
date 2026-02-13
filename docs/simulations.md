---
layout: page
title: Simulations
---


* TOC
{:toc }


## LELO_TEMP_SKY130A

### LELOTEMP_BIAS_IBP

README.md: "4d9de82 Sun Jan 4 23:08:23 2026 +0100 "




#### Loop stability (lstb)

Check stability



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
|**Gain Margin**|**gm\_db** || **Spec**  | **-50.00** | **-10.00** | **-10.00** | **dB** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | -15.21 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|-23.43 | -15.39 | -12.64 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|-21.01 | -17.10 | -13.20 | |
|**DC gain**|**lf\_gain** || **Spec**  | **25.00** | **40.00** | **55.00** | **dB** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 42.73 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|39.81 | 42.69 | 43.82 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|40.40 | 42.87 | 45.34 | |
|**Phase Margin**|**pm\_deg** || **Spec**  | **45.00** | **60.00** | **90.00** |  |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 59.47 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|48.87 | 59.69 | 76.89 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|56.88 | 62.53 | 68.18 | |
|**Unity Gain Frequency**|**ug** || **Spec**  | **0.40** | **15.00** | **100.00** | **MHz** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 5.38 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|1.92 | 5.63 | 9.02 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|4.11 | 5.51 | 6.91 | |
|**PMOS gate**|**v(lpo)** || **Spec**  | **0.45** | **0.70** | **1.10** | **V** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 0.76 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|0.52 | 0.78 | 1.05 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|0.73 | 0.76 | 0.79 | |
|**Delta diode voltage**|**vd** || **Spec**  | **80.00** | **106.00** | **150.00** | **mV** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 109.24 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|84.62 | 115.01 | 145.74 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|104.90 | 108.98 | 113.05 | |
|**Output current**|**i(v1)** || **Spec**  | **0.50** | **1.00** | **2.00** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 1.24 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|0.70 | 1.09 | 1.75 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|0.67 | 1.10 | 1.54 | |
|**VD Error**|**vdiff** || **Spec**  | **-6.00** | **0.00** | **6.00** | **mV** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_typical.html'>Sch_typ</a>| | 0.64 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_etc.html'>Sch_etc</a>|0.25 | 0.60 | 1.02 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/lstb_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-32.30**</span> | -0.01 | <span style='color:red'>**32.29**</span> | |

#### Transient (tran)

Check settling time and current variation



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**t\_settle** || **Spec**  | **0.01** | **0.05** | **2.00** | **us** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_typical.html'>Sch_typ</a>| | 0.91 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_etc.html'>Sch_etc</a>|0.71 | 1.12 | <span style='color:red'>**2.23**</span> | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_mc.html'>Sch_3std</a>|0.68 | 0.91 | 1.13 | |
||**i0** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_typical.html'>Sch_typ</a>| | 1.153 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_etc.html'>Sch_etc</a>|0.806 | 1.162 | 1.657 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_mc.html'>Sch_3std</a>|0.690 | 1.139 | 1.588 | |
||**i1** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_typical.html'>Sch_typ</a>| | 1.152 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_etc.html'>Sch_etc</a>|0.805 | 1.162 | 1.657 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_mc.html'>Sch_3std</a>|0.697 | 1.146 | 1.594 | |
||**i2** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_typical.html'>Sch_typ</a>| | 1.152 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_etc.html'>Sch_etc</a>|0.804 | 1.162 | 1.656 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_mc.html'>Sch_3std</a>|0.726 | 1.131 | 1.537 | |
||**i3** || **Spec**  | **0.500** | **1.000** | **2.000** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_typical.html'>Sch_typ</a>| | 1.152 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_etc.html'>Sch_etc</a>|0.804 | 1.161 | 1.656 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_mc.html'>Sch_3std</a>|0.664 | 1.152 | 1.639 | |
||**idd** || **Spec**  | **5.000** | **30.000** | **60.000** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_typical.html'>Sch_typ</a>| | 29.134 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_etc.html'>Sch_etc</a>|15.579 | 30.086 | 48.825 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/tran_Sch_mc.html'>Sch_3std</a>|23.875 | 28.985 | 34.095 | |

#### DC (dc)

Check temperature performance



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**ibp\_err\_max** || **Spec**  | **-30.00** | **0.00** | **20.00** | **nA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_typical.html'>Sch_typ</a>| | 8.23 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_etc.html'>Sch_etc</a>|7.33 | 8.26 | 9.40 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_mc.html'>Sch_3std</a>|5.26 | 8.35 | 11.45 | |
||**ibp\_err\_min** || **Spec**  | **-30.00** | **0.00** | **20.00** | **nA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_typical.html'>Sch_typ</a>| | -18.01 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_etc.html'>Sch_etc</a>|-20.64 | -18.04 | -15.92 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-35.11**</span> | -18.10 | -1.08 | |
||**imax** || **Spec**  | **0.50** | **0.00** | **2.00** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_typical.html'>Sch_typ</a>| | 1.45 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_etc.html'>Sch_etc</a>|1.28 | 1.45 | 1.66 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_mc.html'>Sch_3std</a>|0.99 | 1.43 | 1.87 | |
||**imin** || **Spec**  | **0.50** | **0.00** | **2.00** | **uA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_typical.html'>Sch_typ</a>| | 0.91 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_etc.html'>Sch_etc</a>|0.81 | 0.91 | 1.04 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**0.46**</span> | 0.90 | 1.33 | |
||**a\_per\_c** || **Spec**  | **1.00** | **3.00** | **5.00** | **nA** |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_typical.html'>Sch_typ</a>| | 3.25 |  | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_etc.html'>Sch_etc</a>|2.89 | 3.25 | 3.73 | |
| | | |<a href='assets/LELOTEMP_BIAS_IBP/dc_Sch_mc.html'>Sch_3std</a>|2.84 | 3.23 | 3.62 | |




### LELOTEMP_OTA




### LELO_TEMP

README.md: "d8f63ff Sat Jan 17 22:18:15 2026 +0100 "


LELO_TEMP

#### Temperature sensor (tran)

Check temperature accuracy



|**Name**|**Parameter**|**Description**| |**Min**|**Typ**|**Max**| Unit|
|:---|:---|:---|---:|:---:|:---:|:---:| ---:|
||**idd\_25** || **Spec**  | **5.000** | **30.000** | **100.000** | **uA** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 66.656 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|40.762 | 61.126 | 81.966 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|46.888 | 67.638 | 88.389 | |
||**iddq\_25** || **Spec**  | **0.000** | **10.000** | **50.000** | **nA** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 6.426 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|5.076 | 6.183 | 35.859 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|6.270 | 6.474 | 6.677 | |
||**ind\_1p\_max** |Industrial 1 point calibration| **Spec**  | **-15.000** | **0.000** | **15.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 0.284 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|-0.360 | 0.150 | 10.644 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|-3.472 | 1.593 | 6.658 | |
||**ind\_1p\_min** |Industrial 1 point calibration| **Spec**  | **-15.000** | **0.000** | **15.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | -5.653 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**-34.626**</span> | -5.970 | -3.771 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-26.478**</span> | -9.078 | 8.321 | |
||**ind\_2p\_max** |Industrial 2 point calibration| **Spec**  | **-10.000** | **0.000** | **10.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 0.614 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|-0.068 | 2.135 | 6.885 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|-1.659 | 0.991 | 3.642 | |
||**ind\_2p\_min** |Industrial 2 point calibration| **Spec**  | **-10.000** | **0.000** | **10.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | -4.596 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**-35.371**</span> | -3.703 | -0.152 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**-13.159**</span> | -5.022 | 3.114 | |
||**com\_1p\_max** |Commercial 1 point calibration| **Spec**  | **-10.000** | **0.000** | **10.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 0.284 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|-0.360 | 0.150 | 2.711 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|-2.036 | 1.020 | 4.076 | |
||**com\_1p\_min** |Commercial 1 point calibration| **Spec**  | **-10.000** | **0.000** | **10.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | -0.698 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|-3.731 | -2.632 | -0.111 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|-5.963 | -2.015 | 1.934 | |
||**com\_2p\_max** |Commercial 2 point calibration| **Spec**  | **-5.000** | **0.000** | **5.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 0.614 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|-0.068 | 0.845 | 2.619 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|-0.217 | 0.735 | 1.687 | |
||**com\_2p\_min** |Commercial 2 point calibration| **Spec**  | **-5.000** | **0.000** | **5.000** | **C** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | -0.987 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**-5.068**</span> | -0.714 | -0.152 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|-3.637 | -1.107 | 1.423 | |
||**freq\_min** |Frequency| **Spec**  | **1.500** | **3.000** | **4.800** | **MHz** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 1.823 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**1.270**</span> | 1.682 | 2.320 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**1.014**</span> | 1.866 | 2.719 | |
||**freq\_max** |Frequency| **Spec**  | **1.500** | **3.000** | **4.800** | **MHz** |
| | | |<a href='assets/LELO_TEMP/tran_Sch_typical.html'>Sch_typ</a>| | 1.823 |  | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_etc.html'>Sch_etc</a>|<span style='color:red'>**1.270**</span> | 1.682 | 2.320 | |
| | | |<a href='assets/LELO_TEMP/tran_Sch_mc.html'>Sch_3std</a>|<span style='color:red'>**1.014**</span> | 1.866 | 2.719 | |




### LELOTEMP_CCMP




### LELOTEMP_CMP




### TB_LELO_TEMP




