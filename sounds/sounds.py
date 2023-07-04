from talon import noise, ctrl

def on_hiss(active):
    print("hiss", active)
    ctrl.mouse_click(0, down=active)

noise.register("hiss", on_hiss)
