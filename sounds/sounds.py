from talon import noise, ctrl

def right_click(active):
    print("hiss", active)
    ctrl.mouse_click(0, down=active)

def double_click(active):
    print("double", active)
    ctrl.mouse_click(0, down=True)
    ctrl.mouse_click(0, down=True)


noise.register("hiss", right_click)
