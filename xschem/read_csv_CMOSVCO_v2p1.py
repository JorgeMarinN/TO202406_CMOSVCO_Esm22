#https://stackoverflow.com/questions/46614526/how-to-import-a-csv-file-into-a-data-array
import pandas as pd
import numpy as np
from matplotlib import pyplot as plt


df=pd.read_fwf('data_CMOSVCO_v2p1.txt')
df.to_csv('data_CMOSVCO_v2p1.csv', index=False)
data = pd.read_csv("data_CMOSVCO_v2p1.csv").values
num_rows, num_cols = data.shape
print(num_rows)
print(num_cols)
thres  = 1.65
sw = [0,2,4,6,8,10,12,14,16]
frq=[0,0,0,0,0,0,0,0,0]
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

#plt.plot([0,1,2,3,4,5,6,7,8,9,10],frq)
plt.plot([0,0.25,0.5,0.75,1,1.25,1.5,1.75,2],frq)
plt.xlabel("Vin [V]")
plt.ylabel("Frequency [Hz]")
plt.show()
#2.489e-9 - 1.466e-9
#1.9829e-8 - 1.8802e-8
