import threading

class PWMPump(threading.Thread):
    def __init__(self, pin, initial_percentage):
        """The constructor, set up some basic threading stuff."""
        self.pin = pin
        self.percentage = initial_percentage #Percentage is an integer from 0 to 100.
        self._exit = False

        threading.Thread.__init__(self)

        self.start()

    def run():
        """This is the part of the code that runs in the thread"""
        while not self._exit:
            if (get the position as a percentage) != self.percentage:
                while (position_not_correct):
                    RPi.GPIO.set(self.pin, HIGH)
                    time.sleep(0.01 * self.percentage) #Calculate this based on the percentage.
                    RPi.GPIO.set(self.pin, LOW)
                    time.sleep(0.01 * (100 - self.percentage)) #Calculate this based on the percentage.

            time.sleep(1);

    def set_percentage(new_percentage):
        """Sets self.percentage to new_percentage."""
        self.percentage = new_percentage

    def get_pin():
        """Returns the pin."""
        return self.pin

    def stop():
        """Stops the thread."""
        self._exit = True

class GateValve(BaseDeviceClass):
    def __init__(self, _id):
        """This is the constructor"""
        BaseDeviceClass.__init__(_id)

        self.max_value = -1 #The maximum allowed percentage open the gate valve can be.
        self.min_value = -1 #The minimum allowed percentage open the gate valve can be.

    def set_max_value(value):
        self.max_value = value

    def set_min_value(value):
        self.min_value = value

    def set_position(percentage_position):
        current_position = -1 #Get this from the A2D, and convert to a percentage (int 0 - 100).

        required_movement = percentage_position - current_position

        if required_movement == 0:
            return

        #TODO How do we actaully make it go backwards w/ PWM?
        elif required_movement > 0: #We need to open the valve.
            (set the direction to forwards)
            #Start it moving.
            #pwm = PWMPump(self._pin, percentage_position) NB: This would have been done when the program started as setup.
            gate_1.set_position(percentage_position)

        else: #We need to close the valve.
            (set the direction to backwards)
            #Start it moving.
            #pwm = PWMPump(self._pin, percentage_position) NB: This would have been done when the program started as setup.
            gate_1.set_position(percentage_position)

        #NB: You'll probably want some misc methods down here to get and set attributes.
