#!/usr/bin/env bash

hugo
# Display available updates to Academic.
cd themes/academic
git fetch
git log --pretty=oneline --abbrev-commit --decorate HEAD..origin/master
cd ../../

# Update Academic.
git submodule update --remote --merge

cd ./public
git add . 
git commit -m 'test'
git push

cd ../
git add . 
git commit -m 'test2'
git push
