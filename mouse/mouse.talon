# "kick"
(kick | click): mouse_click(0)

# "peek"
(peek | peek | right click): mouse_click(1)

# "blink"
(blink | blank): mouse_click(2)
blinker:
  key("ctrl:down")
  key("shift:down")
  mouse_click(2)
  key("shift:up")
  key("ctrl:up")

# "duke"
double click: mouse_click(0, 2)

clunk:
  key("ctrl:down")
  mouse_click(0)
  key("ctrl:up")

slick:
  key("shift:down")
  mouse_click(0)
  key("shift:up")

(release | drop): user.mouse_drag_end()

downer: user.mouse_scroll_down()
upper: user.mouse_scroll_up()

mouse go up: user.move_mouse_by(0, 1)
mouse go down: user.move_mouse_by(0, -1)
mouse go left: user.move_mouse_by(-1, 0)
mouse go right: user.move_mouse_by(1, 0)

mouse center: user.move_mouse_to("center")
mouse top: user.move_mouse_to("top")
mouse top left: user.move_mouse_to("top left")
mouse top right: user.move_mouse_to("top right")
mouse left: user.move_mouse_to("left")
mouse right: user.move_mouse_to("right")
mouse bottom left: user.move_mouse_to("bottom left")
mouse bottom right: user.move_mouse_to("bottom right")
mouse bottom: user.move_mouse_to("bottom")
mouse second center: user.move_mouse_to("second center")
mouse second top: user.move_mouse_to("second top")
mouse second top left: user.move_mouse_to("second top left")
mouse second top right: user.move_mouse_to("second top right")
mouse second left: user.move_mouse_to("second left")
mouse second right: user.move_mouse_to("second right")
mouse second bottom left: user.move_mouse_to("second bottom left")
mouse second bottom right: user.move_mouse_to("second bottom right")
mouse second bottom: user.move_mouse_to("second bottom")
