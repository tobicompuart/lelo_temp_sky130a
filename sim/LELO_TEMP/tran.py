#!/usr/bin/env python3
import pandas as pd
import yaml
import numpy as np
import matplotlib.pyplot as plt
import scipy.constants as const
import re
import os
import sys

sys.path.append("../../design/LELO_TEMP_SKY130A/")

import LELO_TEMP

def main(name,corner=None,show=False,ax=None):

  print(f"INFO: Opening {name}")

  yamlfile = name + ".yaml"
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  with open("replace.yaml") as fi:
    replace = yaml.safe_load(fi)



  x = np.array([int(i) for i in re.split(r"\s+",replace["temperatures"])])

  y = list()
  for t in x:
    dt = (float(obj[f"t2_{t}"]) - float(obj[f"t1_{t}"]))/3
    y.append(float(1/dt))

    lt = LELO_TEMP.LELO_TEMP()
  xk = x + lt.T0
  freq = np.array(y)

  if(ax is None):
    fig,ax = plt.subplots(2,1,figsize=(12,6),sharex=True)


  #- Find calibration values
  cname = name.replace("tran","calibrate").replace("Vh","Vt").replace("Vl","Vt") + ".yaml"

  if(os.path.exists(cname)):
    with open(cname) as fi:
      calib = yaml.safe_load(fi)


    #- Calculate one point calibration
    temp1 = lt.KelvinFromFreq(freq)
    temp_one =  temp1 +  calib["one_offset"]

    #- Calculate two point calibration
    temp2 = lt.KelvinFromFreq(freq)
    temp_two = temp2*calib["two_gain"] + calib["two_offset"]


    pass
  else:
    raise Exception(f"Can't find calibration values for {cname}")

  error_one = temp_one - xk
  error_two = temp_two - xk

  istart = 0
  istop  = 0
  for i in range(0,len(x)):
    if(x[i] <= 0):
      istart = i
    if(x[i] <= 70):
      istop = i


  def addError(name,error):
    obj[f"ind_{name}_max"] = float(error.max())
    obj[f"ind_{name}_min"] = float(error.min())
    obj[f"com_{name}_max"] = float(error[istart:istop+1].max())
    obj[f"com_{name}_min"] = float(error[istart:istop+1].min())
  addError("1p",error_one)
  addError("2p",error_two)



  with open(yamlfile,"w") as fo:
    yaml.dump(obj,fo)



  xp = xk
  yp1 = temp_one
  yp2 = temp_two
  #print(yp1,yp2)

  ax[0].plot(lt.celcius(xp),lt.celcius(yp1),marker="o",color="blue")
  ax[0].plot(lt.celcius(xp),lt.celcius(yp2),marker="o",color="red")

  ax[0].plot(lt.celcius(xp),lt.celcius(xp),color="black",marker="x",linestyle="dotted",alpha=0.5)
  ax[1].plot(lt.celcius(xp),lt.celcius(yp1) - lt.celcius(xp),marker="o",color="blue")
  ax[1].plot(lt.celcius(xp),lt.celcius(yp2) - lt.celcius(xp),marker="o",color="red")
  ax[1].set_xlabel("Temperature [C]")
  ax[0].set_ylabel("Temperature estimate [C]")
  ax[1].set_ylabel("Temperature error [C]")
  ax[0].grid()
  ax[1].grid()
  plt.tight_layout()
  if(show):
    plt.show()
  else:
    plt.savefig(f"{name}.png")

if __name__ == "__main__":

  if(len(sys.argv) > 1):
    fig,ax = plt.subplots(2,1,figsize=(12,6),sharex=True)
    for f in sys.argv[1:]:
      with open(f) as fi:
        for l in fi:
          main(l.strip(),show=False,ax=ax)
    plt.show()
  else:
    main("output_tran/tran_SchGtKttTtVt",show=True)
