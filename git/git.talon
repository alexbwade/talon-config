git init:
  insert("git init")
  key("enter")

git add:
  insert("git add .")
  key("enter")

git commit message:
  insert("git ci -m \"\"")
  key("left")

git commit feature:
  insert("git ci -m \"feat: \"")
  key("left")

git commit feature <user.text>$:
  insert("git ci -m \"feat: [RP-{text}]\"")
  key("left")

git commit fix:
  insert("git ci -m \"fix: \"")
  key("left")

git commit chore:
  insert("git ci -m \"chore: \"")
  key("left")

git commit amend:
  insert("git amend")
  key("enter")

git status:
  insert("git status")
  key("enter")

git <user.text>$:
  insert("git {text}")

