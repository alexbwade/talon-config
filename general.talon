os: windows
-
save: key("ctrl-s")

soft save:
  key("ctrl-k")
  sleep(0.1)
  key("ctrl-shift-s")

find: key("ctrl-f")

global find: key("ctrl-shift-f")

look: user.move_cursor_to_gaze_point()

add bullet: insert("- [ ] ")

# these have unusual default bindings; "fixing" them here
please: skip()

backspace: key("backspace")

delete: key("delete")

left bracket: key("[")

right bracket: key("]")

left brace: key("{")

right brace: key("}")
