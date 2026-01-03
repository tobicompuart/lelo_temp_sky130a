#!/usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import sys

sys.path.append("../../py/")


import LELO_TEMP

lt = LELO_TEMP.LELO_TEMP()

df = pd.read_csv("tb.csv")

fig,ax = plt.subplots(2,1,figsize=(12,6),sharex=True)

freq = df["count"]*32768

offset = -6
x = df["temperature"]
y = lt.KelvinFromFreq(freq,compensate=True) - lt.T0 + offset

ax[0].plot(x,y,label="Simulation")
ax[0].plot(x,x,label="Ideal curve")
ax[1].plot(x,y - x,label="error")
ax[1].set_xlabel("Temperature [C]")
ax[0].set_ylabel("Temperature estimate [C]")
ax[1].set_ylabel("Temperature error [C]")
ax[0].grid()
ax[1].grid()
plt.tight_layout()
plt.savefig("verilog.png")

plt.show()
