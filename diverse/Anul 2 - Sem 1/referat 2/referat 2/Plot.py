import numpy as np
from sklearn.linear_model import LinearRegression
import matplotlib.pyplot as plt

x  = np.array([0.018257, 0.016903, 0.015811, 0.014907, 0.014142]).reshape((-1, 1))
y1 = np.array([2.9500, 2.7000, 2.5333, 2.3667, 2.2667])
y2 = np.array([5.0167, 4.6000, 4.3000, 4.0667, 3.8167])

model1 = LinearRegression().fit(x, y1)
model2 = LinearRegression().fit(x, y2)

y1_pred = model1.intercept_ + model1.coef_ * x
y2_pred = model2.intercept_ + model2.coef_ * x

print(f"slope: {model1.coef_}")
print(f"slope: {model2.coef_}")


plt.plot(x, y1, marker='o', markerfacecolor='blue', markersize=2, linewidth=0)
plt.plot(x, y2, marker='o', markerfacecolor='red', markersize=2, linewidth=0)
plt.plot(x, y1_pred, linewidth=0.5, label="d1")
plt.plot(x, y2_pred, linewidth=0.5, label="d2")
plt.legend(loc="upper left")
plt.xlabel('1 / sqrt(U) (1 / sqrt(V))')
plt.ylabel('D (cm)')

plt.show()