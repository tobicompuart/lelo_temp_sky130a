#!/usr/bin/env python3

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

df = pd.read_csv("output.txt")

fig,ax = plt.subplots(2,1,figsize=(16,9),sharex=True)

offset = -63
gain = 2.6

y = (df["count"]+offset)*gain
x = df["temperature"]
coefficients = np.polyfit(x, y, 1) # '1' indicates a first-degree polynomial (linear)
slope = coefficients[0]
intercept = coefficients[1]

ax[0].plot(x,y,label="Simulation")
ax[1].plot(x,y - x,label="error")
ax[1].set_xlabel("Temperature [C]")
ax[0].set_ylabel("Temperature estimate [C]")
ax[1].set_ylabel("Temperature error [C]")
ax[0].grid()
ax[1].grid()
#ax[2].plot(df["temperature"],np.cumsum(np.gradient(df["count"].to_numpy())))
plt.show()
