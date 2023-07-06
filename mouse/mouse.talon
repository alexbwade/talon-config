# "kick"
(kick | click):
  # close the mouse grid if open
  user.grid_close()
  # End any open drags
  # Touch automatically ends left drags so this is for right drags specifically
  user.mouse_drag_end()
  mouse_click(0)

# "peek"
(peek | peek | right click):
  # close the mouse grid if open
  user.grid_close()
  # End any open drags
  # Touch automatically ends left drags so this is for right drags specifically
  user.mouse_drag_end()
  mouse_click(1)

# "blink"
(blink | blank):
  # close the mouse grid if open
  user.grid_close()
  # End any open drags
  # Touch automatically ends left drags so this is for right drags specifically
  user.mouse_drag_end()
  mouse_click(2)

# "duke"
double click:
  # close the mouse grid if open
  user.grid_close()
  # End any open drags
  # Touch automatically ends left drags so this is for right drags specifically
  user.mouse_drag_end()
  mouse_click(0, 2)

# "duke"
clunk:
  # close the mouse grid if open
  user.grid_close()
  # End any open drags
  # Touch automatically ends left drags so this is for right drags specifically
  user.mouse_drag_end()
  key("ctrl:down")
  mouse_click(0)
  key("ctrl:up")

mouse center: mouse_move(100, 200)

(release | done): user.mouse_drag_end()

downer: user.mouse_scroll_down()
upper: user.mouse_scroll_up()
spring: edit.page_up()
drop: edit.page_down()
