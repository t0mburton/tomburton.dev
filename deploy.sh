#!/bin/sh
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

hugo -t pulp

cd public

git add .
git commit -m "Rebuild $(date)"
git push origin master