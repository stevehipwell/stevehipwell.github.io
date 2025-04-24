set windows-shell := ["pwsh", "-NoLogo", "-Command"]

default:
  just --list

markdownlint:
  npm exec markdownlint-cli2 --yes -- --fix "**/*.{md,markdown}"

build:
  hugo build --gc  --minify --environment production

serve:
  hugo serve --buildDrafts
