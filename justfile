set windows-shell := ["pwsh", "-NoLogo", "-Command"]

default:
  just --list

fmt:
  rumdl fmt --fix .

lint:
  rumdl check .

build:
  hugo build --gc  --minify --environment production

serve:
  hugo serve --buildDrafts
