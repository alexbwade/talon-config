# app: "MINGW64"
# -
git init:
  insert("git init")
  key("enter")

git status:
  insert("git status")
  key("enter")

git push:
  insert("git push")
  key("enter")

git pull:
  insert("git pull")
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

git checkout:
  insert("git co ")

git checkout dash be:
  insert("git co -b ")

git <user.text>$:
  insert("git {text}")

