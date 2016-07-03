#!/bin/sh
git checkout master
git pull
cp ../contempworks/generated/*.html contempworks
git add -A
git commit
git push
git checkout gh-pages
git pull
git merge -m "Merged latest from master" master
git push
git checkout master