#!/usr/bin/env python2.7
# probe_level_sensor.py:
#      Wimborne Model Town
#        River System
#      Water Level Sensor software (Probe Version)
#
#  **********************************************************************
# This program tests the state of nine GPIO pins that are connected to
# nine level probes immersed in a vertical tube connected to the bases
# of the water butts to give a coarse indication of water depth.
# It is intended to be a prototype for this part of the full software
# package.
#
# It uses the RPi.GPIO library.
#
# Nine GPIO pins are used to represent nine different levels from 100 mm 
# to 900 mm of water.
#    
# Copyright (c) 2017 Wimborne Model Town http://www.wimborne-modeltown.com/
#
#    This code is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    PWM_Dimmer.py is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    with this software.  If not, see <http://www.gnu.org/licenses/>.
# 
#  ***********************************************************************

import RPi.GPIO as GPIO
from time import sleep

# Setup Variables
sample_rate = 5                                 # Modify this to change the frequency of reading the probes.

# Pins States.  One element per level starting at empty and ending at 900 mm.
# Probes are active low, so a response of 1 means that a probe is not covered.
levels = [1,1,1,1,1,1,1,1,1]

# Setup GPIO pins
GPIO.setmode(GPIO.BCM)                          # BCM numbering scheme.

# Level pins.  Set as an inputs
GPIO.setup(1, GPIO.IN)                          # 100 mm of water
GPIO.setup(2, GPIO.IN)                          # 200 mm of water
GPIO.setup(3, GPIO.IN)                          # 300 mm of water
GPIO.setup(4, GPIO.IN)                          # 400 mm of water
GPIO.setup(5, GPIO.IN)                          # 500 mm of water
GPIO.setup(6, GPIO.IN)                          # 600 mm of water
GPIO.setup(7, GPIO.IN)                          # 700 mm of water
GPIO.setup(8, GPIO.IN)                          # 800 mm of water
GPIO.setup(9, GPIO.IN)                          # 900 mm of water

try:
    while True:
        levels[0] = GPIO.input(1)
        levels[1] = GPIO.input(2)
        levels[2] = GPIO.input(3)
        levels[3] = GPIO.input(4)
        levels[4] = GPIO.input(5)
        levels[5] = GPIO.input(6)
        levels[6] = GPIO.input(7)
        levels[7] = GPIO.input(8)
        levels[8] = GPIO.input(9)

        print levels

        if levels == [1,1,1,1,1,1,1,1,1]:
            print ("The Butts are empty")
        elif levels == [0,1,1,1,1,1,1,1,1]:
            print ("The Butts contain at least 100 mm of water")
        elif levels == [0,0,1,1,1,1,1,1,1]:
            print ("The Butts contain at least 200 mm of water")
        elif levels == [0,0,0,1,1,1,1,1,1]:
            print ("The Butts contain at least 300 mm of water")
        elif levels == [0,0,0,0,1,1,1,1,1]:
            print ("The Butts contain at least 400 mm of water")
        elif levels == [0,0,0,0,0,1,1,1,1]:
            print ("The Butts contain at least 500 mm of water")
        elif levels == [0,0,0,0,0,0,1,1,1]:
            print ("The Butts contain at least 600 mm of water")
        elif levels == [0,0,0,0,0,0,0,1,1]:
            print ("The Butts contain at least 700 mm of water")
        elif levels == [0,0,0,0,0,0,0,0,1]:
            print ("The Butts contain at least 800 mm of water")
        elif levels == [0,0,0,0,0,0,0,0,0]:
            print ("The Butts contain at least 900 mm of water")
        else:
            print ("There is a fault in one of the sensors.")
            print ("Look for a '1' state followed by a '0' below to identify it.")
            print levels

        sleep(5)

except KeyboardInterrupt:
    GPIO.cleanup()                              # Finish
    print "Clean up"
