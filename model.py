#!/usr/bin/env python3

#!/usr/bin/env python3
import pandas as pd
import yaml
import numpy as np
import matplotlib.pyplot as plt
import scipy.constants as const
import re
import os
import sys

def calcDeltaVc(temperature):
    T0 = 273.15
    N = 8*8
    k_q = const.k/const.e
    delta_v = k_q*(T0+temperature)*np.log(N)
    return delta_v

def calcCurrent(temperature,compensate=False):
    R = 7.535e3*(8+4)
    T0 = 273.15

    #- temperature coefficient from resistor
    res_n25 = 1/10.6e-6
    res_125 = 1/10e-6
    res_d_dtemp = (res_125 - res_n25)/(125-25)

    R_tcomp = (R + (res_d_dtemp)*(temperature - 25))

    #- boltzman/unit charge
    k_q = const.k/const.e

    id = calcDeltaVc(temperature)/R_tcomp

    return id

def calcVc(temperature):
    #- Calculate the diode voltage, see https://analogicus.com/aic2026/2024/10/25/Diodes.html#forward-voltage-temperature-dependence

    T0 = 273.15
    k_q = const.k/const.e
    vc = k_q*(T0 + temperature)*(2.35 - 3*np.log(T0 + temperature)) + 1.12
    return vc

def calcFreq(temperature,compensate=False):
    C = 53e-15*10
    id = calcCurrent(temperature,compensate=compensate)

    freq = id/(C*calcVc(temperature))

    return freq



def main(name,show=False):
    sys.path.append(".")
    #- Get the model for calculating the temperature from the frequency
    from sim.LELO_TEMP.tran import calcTemperatureFromFreq 

    x = np.arange(-40,125,5)

    fname = "sim/LELO_TEMP/output_tran/tran_SchGtKttTtVt.yaml"
    havesim = False
    if(os.path.exists(fname)):
        havesim = True
        with open(fname) as fi:
            obj  = yaml.safe_load(fi)

        temp = obj["temperature"]
        freqsim = obj["freq"]


    fig,ax = plt.subplots(3,1,figsize=(12,6),sharex=True)
    #ax = [ax]
    freq = calcFreq(x)

    ax[0].plot(x,freq,label="Frequency")
    y1 = calcTemperatureFromFreq(freq)
    ax[1].plot(x,y1,label="Calc raw")
    y = calcTemperatureFromFreq(freq,compensate=True)
    ax[1].plot(x,y,label="Calc rescomp")
    ax[1].plot(x,x,label="Ideal")
    ax[2].plot(x,y-x,label="Error")
    ax[2].plot(x,y1-x,label="Error, no comp")
    if(havesim):
        ax[0].plot(temp,freqsim,label="Simulated Frequency")

    for a in ax:
        a.grid()
        a.legend()

    plt.tight_layout()
    if(show):
        plt.show()
    else:
        plt.savefig(f"{name}.png")

if __name__ == "__main__":
    main("output_tran/tran_SchGtKttTtVt",show=True)
