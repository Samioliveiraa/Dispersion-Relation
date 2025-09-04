import numpy as np
import matplotlib.pyplot as plt

m=1
k=np.arange(-np.pi, np.pi, 0.01)
y=[np.sqrt((1/m)*(2 - 2*np.cos(x))) for x in k]

plt.xlim(-np.pi, np.pi)
plt.ylim(0, 2.1)
plt.xlabel('Wavenumber')
plt.ylabel('frequency')
plt.title('Dispersion relation')
plt.plot(k, y, linestyle ='--', color = 'darkred', label='m=1')
plt.legend()
plt.show()
