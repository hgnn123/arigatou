import numpy as np
import matplotlib.pyplot as plt

figsize = 8,6
figure, ax = plt.subplots(figsize=figsize)
a = np.loadtxt('a.txt')
b = np.loadtxt('b.txt')

x = b.T[0]
plt.plot(x,np.abs(a.T[1]), label='vaccum-processed')
plt.plot(x,np.abs(b.T[1]), label='solution-processed')
plt.yscale('log')

plt.tick_params(labelsize=18)
labels = ax.get_xticklabels() + ax.get_yticklabels()

font1 = {'family' : 'Times New Roman',
'weight' : 'normal',
'size'   : 20,
}
plt.grid(linestyle='-.')
plt.xlabel('Gate Voltage/V',font1)
plt.ylabel('Drain Current/(-A)',font1)

plt.legend()

