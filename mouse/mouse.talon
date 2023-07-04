click:
  mouse_click(0)
  # close the mouse grid if open
  user.grid_close()
  # End any open drags
  # Touch automatically ends left drags so this is for right drags specifically
  user.mouse_drag_end()

right click: mouse_click(1)

double click: mouse_click(0, 2)

<user.modifiers> click:
  key("{modifiers}:down")
  mouse_click(0)
  key("{modifiers}:up")
  # close the mouse grid
  user.grid_close()

mouse center: mouse_move(100, 200)

release: user.mouse_drag_end()