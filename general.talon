os: windows
-
save: key("ctrl-s")

find: key("ctrl-f")
global find: key("ctrl-shift-f")

(call | invoke):
  insert("()")
  key("left")


# look: user.move_cursor_to_gaze_point()  (conflicts with alphabet)

# capital <user.text>$: insert(capitalize(user.text))
# pascal <user.text>$: TextStuff
# shout <user.text>$: text!
# declare/statement <user.text>$: text.
# ask/wonder <user.text>$: text?

(corelli | coral | choral | quarrel): insert("Karelly")

(dashing | dashi): insert(" - ")

(ls | als): insert("ls -la")

add bullet: insert("- [ ] ")

# these have unusual default bindings; "fixing" them here
please: skip()

backspace: key("backspace")

delete: key("delete")

left bracket: key("[")

right bracket: key("]")

left brace: key("{")

right brace: key("}")
