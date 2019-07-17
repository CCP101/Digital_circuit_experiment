import time

def half_adder(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
    ledbar.reset()
    while not done:
        if (buttons[0].read()==1):
            led_state0 = not led_state0
            leds[0].toggle() 
            time.sleep(.1)
        if (buttons[1].read()==1):
            led_state1 = not led_state1
            leds[1].toggle() 
            time.sleep(.1)
        if (led_state0 == False and led_state1 == False):
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (led_state0 == True and led_state1 == False):
            ledbar.write_brightness(0b0000011111)
            time.sleep(.1)
        if (led_state0 == False and led_state1 == True):
            ledbar.write_brightness(0b0000011111)
            time.sleep(.1)
        if (led_state0 == True and led_state1 == True):
            ledbar.write_brightness(0b1111100000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()

def full_adder(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
    led_state2 = False
    ledbar.reset()
    while not done:
        if (buttons[0].read()==1):
            led_state0 = not led_state0
            leds[0].toggle() 
            time.sleep(.3)
        if (buttons[1].read()==1):
            led_state1 = not led_state1
            leds[1].toggle() 
            time.sleep(.3)
        if (buttons[2].read()==1):
            led_state2 = not led_state2
            leds[2].toggle() 
            time.sleep(.3)
        if (led_state0 == False and led_state1 == False and led_state2 == False):
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (led_state0 == True and led_state1 == False and led_state2 == False):
            ledbar.write_brightness(0b0000011111)
            time.sleep(.1)
        if (led_state0 == False and led_state1 == True and led_state2 == False):
            ledbar.write_brightness(0b0000011111)
            time.sleep(.1)
        if (led_state0 == True and led_state1 == True and led_state2 == False):
            ledbar.write_brightness(0b1111100000)
            time.sleep(.1)
        if (led_state0 == False and led_state1 == False and led_state2 == True):
            ledbar.write_brightness(0b0000011111)
            time.sleep(.1)
        if (led_state0 == True and led_state1 == False and led_state2 == True):
            ledbar.write_brightness(0b1111100000)
            time.sleep(.1)
        if (led_state0 == False and led_state1 == True and led_state2 == True):
            ledbar.write_brightness(0b1111100000)
            time.sleep(.1)
        if (led_state0 == True and led_state1 == True and led_state2 == True):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()