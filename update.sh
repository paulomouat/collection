#!/bin/sh
#cp *.html ../gh-pages
git checkout master
cp ../../contempworks/generated/*.html contempworks
git add -A
git commit
git push
git checkout gh-pages
git merge -m "Merged latest from master" origin/master
git push