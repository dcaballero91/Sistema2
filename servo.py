import RPi.GPIO as GPIO
import time
import sys
servoPIN = 17
GPIO.setmode(GPIO.BCM)
GPIO.setup(servoPIN, GPIO.OUT)

p = GPIO.PWM(servoPIN, 50) # GPIO 17 for PWM with 50Hz
p.start(2.5) # Initialization
try:
  while True:
    p.ChangeDutyCycle(12.5)
    time.sleep(5)
    p.ChangeDutyCycle(7.5)
    time.sleep(0.5)
    p.stop()
    GPIO.cleanup()
    sys.exit()
except KeyboardInterrupt:
    p.stop()
    GPIO.cleanup()
    sys.exit()
