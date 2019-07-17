import time

def not_gate(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
    ledbar.reset()
    while not done:
        if (buttons[0].read()==1):
            led_state0 = not led_state0
            leds[0].toggle() 
            time.sleep(.3)
        if (led_state0 == True):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        else:
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()

def and_gate(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
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
        if (led_state0 == True and led_state1 == True):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        else:
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()

def or_gate(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
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
        if (led_state0 == True or led_state1 == True):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        else:
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()

def nand_gate(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
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
        if (led_state0 == False or led_state1 == False):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        else:
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()

def nor_gate(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
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
        if (led_state0 == False and led_state1 == False):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        else:
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()

def xor_gate(ledbar,buttons,leds):
    done = False
    led_state0 = False
    led_state1 = False
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
        if (led_state0 != led_state1):
            ledbar.write_brightness(0b1111111111)
            time.sleep(.1)
        else:
            ledbar.write_brightness(0b0000000000)
            time.sleep(.1)
        if (buttons[3].read()==1):
            done = True
            for i in leds:
                i.off()
            ledbar.reset()