#!/bin/sh
#cp *.html ../gh-pages
cp ../../contempworks/generated/*.html ../master/contempworks
git add -A
git commit
git push
cd ../gh-pages
git add -A
git merge -m "Merged latest from master" origin/master
git push