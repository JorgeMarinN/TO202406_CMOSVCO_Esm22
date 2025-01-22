#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
import matplotlib
matplotlib.use('Agg')
#matplotlib.use('TkAgg')
#NOTE: DO "sudo apt-get update
#sudo apt-get install python3-tk"
from matplotlib import pyplot as plt


#Iload  = 0.5#[A]
#Iload = np.arange(0.01, 3, 0.01)
Iload = np.arange(0.01, 0.27, 0.01)
Vout = 1.8#[V]
Cn = 14.1e-12#[F]
Cp = 16.3e-12#[F]
Fsw = 2e6#[MHz]
RonP = 350e-3#[mOhm]
RonN = 200e-3#[mOhm]
RLdc = 0e-3#[mOhm]
Vdd = 3.3#[V]

Pout_ps = Vout*Iload
print('Pout_ps = ',Pout_ps)

## Conduction loss
Req = RonP + RLdc
Pcond = Iload**2*Req
print('Pcond = ',Pcond)

## Gate switching loss
Pgatesw = (Cp + Cn)*Vdd**2*Fsw
print('Pgatesw = ',Pgatesw)

## Power stage efficiency
Eff_ps = Pout_ps/(Pout_ps+(Pcond+Pgatesw))*100
print('Eff_ps = ',Eff_ps)


plt.plot(Iload,Eff_ps)
plt.xlabel("Iload [A]")
plt.ylabel("Efficiency, PowerStage [%]")
plt.show()
plt.savefig("eff_vs_iload.png")#used for "matplotlib.use('Agg')"

exit()

