print("Hello world, it's me again")

#shape
plot.new()
polygon(c(0, 0, 0.5, 0.5), c(0, 0.5, 0.5, 0))

#comment

#just testing out
plot.new()
polygon(c(0, 0, 1, 0.5), c(0, 1, 1, 0))

usethis::use_git_hook(
  hook = "pre-commit",
  script = '#!/bin/sh
  branch="$(git rev-parse --abbrev-ref HEAD)"
  if [ "$branch" = "main" ]; then
  echo "You cannot commit directly to main branch"
  exit 1
  fi'
)
print("conflict")
