#!/bin/sh
#cp *.html ../gh-pages
git add -A
git commit
git push
cp ../../contempworks/generated/*.html ../gh-pages/contempworks
cd ../gh-pages
git add -A
git merge -m "Merged latest from master" origin/master
git push