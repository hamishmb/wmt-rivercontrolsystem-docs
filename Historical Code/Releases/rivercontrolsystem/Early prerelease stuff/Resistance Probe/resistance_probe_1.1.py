#!/usr/bin/env python
# -*- coding: utf-8 -*- 
# resistance_probe.py Version 1.1
# Copyright (C) 2017 Wimborne Model Town
# resistance_probe.py is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 3 or,
# at your option, any later version.
#
# resistance_probe.py is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with resistance_probe.py.  If not, see <http://www.gnu.org/licenses/>.

#Do future imports to prepare to support python 3. Use unicode strings rather than ASCII strings, as they fix potential problems.
from __future__ import absolute_import
from __future__ import division
from __future__ import print_function
from __future__ import unicode_literals

import RPi.GPIO as GPIO
import time
import datetime
import sys
import getopt #Proper option handler.

def usage():
    print("\nUsage: resistance_probe.py [OPTION]\n\n")
    print("Options:\n")
    print("       -h, --help:               Show this help message")
    print("       -f, --file:               Specify file to write the recordings to. Default: interactive.")
    print("       -n <int>, --num=<int>     Specify number of readings to take before exiting. Without this option, readings will be taken until the program is terminated")
    print("resistance_probe.py is released under the GNU GPL Version 3")
    print("Copyright (C) Wimborne Model Town 2017")

#The pins are active low.
ActiveState = False
FileName = "Unknown"

#Check all cmdline options are valid.
try:
    opts, args = getopt.getopt(sys.argv[1:], "hf:n:", ["help", "file=", "num="])

except getopt.GetoptError as err:
    #Invalid option. Show the help message and then exit.
    #Show the error.
    print(unicode(err))
    usage()
    sys.exit(2)

#Do setup. o=option, a=argument.
NumberOfReadingsToTake = 0 #Take readings indefinitely by default.

for o, a in opts:
    if o in ["-n", "--num"]:
        NumberOfReadingsToTake = int(a)

    elif o in ["-f", "--file"]:
        FileName = a

    elif o in ["-h", "--help"]:
        usage()
        sys.exit()

    else:
        assert False, "unhandled option"

print("System Time: ", str(datetime.datetime.now()))

print("Welcome. This program will quit automatically if you specified a number of readings, otherwise quit with CTRL-C when you wish.\n")

#Get filename, if one wasn't specified.
if FileName == "Unknown":
    print("Please enter a filename to save the readings to.")
    print("The file will be appended to.")
    print("Make sure it's somewhere where there's plenty of disk space. Suggested: readings.txt")

    sys.stdout.write("Enter filename and press ENTER: ")

    FileName = raw_input()

    print("\n\nSelected File: "+FileName)
    print("Press CTRL-C if you are not happy with this choice.\n")

    print("Press ENTER to continue...")

    raw_input() #Wait until user presses enter.

try:
    print("Opening file...")
    RecordingsFile = open(FileName, "a")

except:
    #Bad practice :P
    print("Error opening file. Do you have permission to write there?")
    print("Exiting...")
    sys.exit()

else:
    RecordingsFile.write("Start Time: "+str(datetime.datetime.now())+"\n\n")
    RecordingsFile.write("Starting to take readings...\n")
    print("Successfully opened file. Continuing..")

print("Starting to take readings. Please stand by...")

#Use *BOARD* mode for compatibility between different versions of the Pi. BOARD pins do *NOT* have the same number as BCM pins.
GPIO.setmode(GPIO.BOARD)

#10 Inputs. 10 is for the lowest depth, 22 the highest.
GPIO.setup(10, GPIO.IN) #1
GPIO.setup(11, GPIO.IN) #2
GPIO.setup(12, GPIO.IN) #3
GPIO.setup(13, GPIO.IN) #4
GPIO.setup(15, GPIO.IN) #5
GPIO.setup(16, GPIO.IN) #6
GPIO.setup(18, GPIO.IN) #7
GPIO.setup(19, GPIO.IN) #8
GPIO.setup(21, GPIO.IN) #9
GPIO.setup(22, GPIO.IN) #10

#Holds pins in reverse order to streamline finding the level.
RPins = [22, 21, 19, 18, 16, 15, 13, 12, 11, 10]

#Normal order.
Pins = RPins[::-1]

def GetLevel():
    """Gets the level of the water."""
    for Pin in RPins:
        #Ignore pins until we find one that is in the active state.
        if GPIO.input(Pin) != ActiveState:
            continue

        #This pin must be active.
        Index = Pins.index(Pin)

        #Return the level, assume pin 0 is at 0mm.
        return Index*100

    #No pins were high.
    return "Below Scale!"

#Holds the number of readings we've taken.
NumberOfReadingsTaken = 0

try:
    while (NumberOfReadingsToTake == 0 or (NumberOfReadingsTaken < NumberOfReadingsToTake)):
        Level = GetLevel()

        print("Time: ", str(datetime.datetime.now()), "Level: "+str(Level))
        RecordingsFile.write("Time: "+str(datetime.datetime.now())+" Level: "+str(Level)+"\n")

        NumberOfReadingsTaken += 1

        #Take readings every 5 minutes.
        time.sleep(300)

except BaseException as E:
    #Ignore all errors. Generally bad practice :P
    print("\nCaught Exception: ", E)

finally:
    #Always clean up properly.
    print("Cleaning up...")

    RecordingsFile.close()

    #Reset GPIO pins.
    GPIO.cleanup()
