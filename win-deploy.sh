#!/bin/bash
set -o errexit -o nounset
cd ..; mkdir drat; cd drat

## Set up Repo parameters
git init
git config user.name "Jumping Rivers"
git config user.email "colin@jumpingrivers.com"
git config --global push.default simple

## Get drat repo
git remote add upstream "https://$GITHUB_PAT@github.com/eRum2018-talk/drat.git"
git fetch upstream 2>err.txt
Rscript -e "file.remove('err.txt')"
git checkout gh-pages

Rscript -e "fname = list.files(path = '../$APPVEYOR_PROJECT_NAME/', full.names = TRUE, pattern = '*.zip');\
    drat::insertPackage(fname, \
      repodir = '.', \
      commit=FALSE)"

git add *
git status
git commit -m "Appveyor update $APPVEYOR_PROJECT_NAME: build $APPVEYOR_BUILD_NUMBER (R-$R_VERSION)"
git status
git push 2>err.txt
cd ..