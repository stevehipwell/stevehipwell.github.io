set windows-shell := ["pwsh", "-NoLogo", "-NoProfile", "-Command"]

default:
    just --list

fmt:
    rumdl fmt --fix .

lint:
    rumdl check .

build:
    hugo build --gc  --minify --environment production

serve:
    hugo serve --buildDrafts --environment development

upgrade:
    hugo mod get -u github.com/hugo-sid/hugo-blog-awesome/v2@latest && hugo mod tidy
