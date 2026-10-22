import time
import board
import math
import adafruit_mlx90393
from mpu6050 import mpu6050

i2c = board.I2C()  # uses board.SCL and board.SDA
SENSOR = adafruit_mlx90393.MLX90393(i2c, gain=adafruit_mlx90393.GAIN_1X)
SENSOR_P = mpu6050(0x68)

count = 0
med = 0

#SENSOR.self_test()
while count < 1000:
#    MX, MY, MZ = SENSOR.magnetic
    count += 1
    # print(MX)
    # print(MY)
    # print(MZ)
    accel_data = SENSOR_P.get_accel_data()
    # print(accel_data['x'])
    # print(accel_data['y'])
    # print(accel_data['z'])
    med += math.sqrt(accel_data['x']**2 + accel_data['y']**2 + accel_data['z']**2)

print(med / count)

