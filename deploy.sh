#!/bin/sh
# Publish the page to kpricorn.github.io (the `public` submodule).
#   git submodule update --init public   # once
#   ./deploy.sh [commit message]
set -e

cd "$(dirname "$0")"
cp index.html 404.html favicon.svg public/

cd public
git add -A
msg="rebuilding site $(date)"
[ -n "$*" ] && msg="$*"
git commit -m "$msg"
git push origin master
