#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt


df=pd.read_fwf('/foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_CMOSVCO_v3p2.txt')
df.to_csv('/foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_CMOSVCO_v3p2.csv', index=False)
data = pd.read_csv("/foss/designs/TO202406_CMOSVCO_Esm22/xschem/data/data_CMOSVCO_v3p2.csv").values
num_rows, num_cols = data.shape
print(num_rows)
print(num_cols)
thres  = 1.65
sw = [0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36]
frq=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
for i in sw:
	x = data[:,i]
	y = data[:,i+1]
	x=x[~pd.isnull(x)]
	y=y[~pd.isnull(y)]
	kk2=np.diff(y > thres, prepend=False)
	kk3=np.argwhere(kk2)[::2,0]
	lgt=kk3.shape
	j = int(i/2)
	frq[j]=lgt[0]/(x[kk3[-1]]-x[kk3[0]])
	print(lgt[0]/(x[kk3[-1]]-x[kk3[0]]))
	plt.plot(x,y)
plt.show()

plt.plot([0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7,1.8,1.9],frq)
plt.xlabel("Vin [V]")
plt.ylabel("Frequency [Hz]")
plt.show()


plt.plot([0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1,1.1,1.2,1.3,1.4,1.5,1.6,1.7],frq[1:17])
plt.xlabel("Vin [V]")
plt.ylabel("Frequency [Hz]")
plt.show()
