#!/usr/bin/env python3

import scipy.constants as const
import numpy as np

class LELO_TEMP():

    def __init__(self):


        self.N = 8*8
        self.T0 = 273.15

        #- fudge factor to get the second order compensation working
        self.fudge = 2.3
        self.alpha = 0.01
        self.cmp_delay = 1e-9
        self.cmp_delay = 0
        #- Simulation of 1 V across the resistor
        self.R_n25 = 1/10.77e-6
        #self.R0 = 7.535e3*(8+4)
        self.R0 = 1/10.611e-6
        self.R_75 = 1/10.34e-6
        self.R_d_dtemp = (self.R_75 - self.R_n25)/100*self.fudge

        self.k_q = const.k/const.e
        #- Modify capacitor to get gain correct
        #self.C = 53.8e-15*10
        self.C = 53.8e-15*5
        self.ell = 2.35

        #- Bandgap silicon
        self.VG = 1.12

        #- Fudge factor for the gain
        self.gain =1.6
        pass

    def celcius(self,kelvin):
        return kelvin - self.T0

    def R(self,temperature=None):
        res = self.R0
        if(temperature is not None):
            res =  (self.R0 - (self.R_d_dtemp*(temperature-25)))
            pass

        return res

    def KelvinFromFreq(self,freq,temperature=None):
        #- f = 2/RC*DeltaV/Vc
        deltaV_Vc = freq/2*self.R(None)*self.C
        deltaV = deltaV_Vc/self.Vc(None)

        #- deltaV = kT/q*ln(64)
        T = deltaV/self.k_q/np.log(self.N)

        T = T/self.R(None)*self.R(T)*self.Vc(None)/self.Vc(T)*self.gain
        print(self.celcius(T))

        return T

    def DeltaV(self,temperature):
        return  self.k_q*(self.T0+temperature)*np.log(self.N)

    def Current(self,temperature):
        return self.DeltaV(temperature)/self.R(temperature)

    def Vc(self,temperature):
        vc = self.k_q*(self.T0 + 42)*(self.ell - 3*np.log(self.T0 + 42)) + self.VG
        if(temperature is not None):
            #- Does not look like this works to compensate the temperature sensor. Don't know why
            #vc =  self.k_q*(self.T0 + temperature)*(self.ell - 3*np.log(self.T0 + temperature)) + self.VG
            pass
        #print(vc)
        return vc

    def Freq(self,temperature):
        return  self.Current(temperature)/(self.C*self.Vc(temperature))
