import time
import board
import adafruit_mlx90393
from mpu6050 import mpu6050

i2c = board.I2C()  # uses board.SCL and board.SDA
SENSOR = adafruit_mlx90393.MLX90393(i2c, gain=adafruit_mlx90393.GAIN_1X)
SENSOR_P = mpu6050(0x68)

count = 0

#SENSOR.self_test()
while True:
    MX, MY, MZ = SENSOR.magnetic
    count += 1
    print(MX)
    print(MY)
    print(MZ)
    accel_data = SENSOR_P.get_accel_data()
    print(accel_data['x'])
    print(accel_data['y'])
    print(accel_data['z'])
   # Display the status field if an error occured, etc.
    if SENSOR.last_status > adafruit_mlx90393.STATUS_OK:
        SENSOR.display_status()
    time.sleep(0.05)


