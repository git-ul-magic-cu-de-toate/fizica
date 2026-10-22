import time
import board
import adafruit_mlx90393
from mpu6050 import mpu6050

i2c = board.I2C()  # uses board.SCL and board.SDA
SENSOR = adafruit_mlx90393.MLX90393(i2c, gain=adafruit_mlx90393.GAIN_1X)
SENSOR_P = mpu6050(0x68)

count = 0

Mxmed = 0
Mymed = 0
Mzmed = 0
axmed = 0
aymed = 0
azmed = 0

#SENSOR.self_test()
while count < 1000:
    MX, MY, MZ = SENSOR.magnetic
    count += 1
    Mxmed += MX
    Mymed += MY
    Mzmed += MZ
    accel_data = SENSOR_P.get_accel_data()
    axmed += accel_data['x']
    aymed += accel_data['y']
    azmed += accel_data['z']

print(Mxmed / count)
print(Mymed / count)
print(Mzmed / count)
print(axmed / count)
print(aymed / count)
print(azmed / count)


