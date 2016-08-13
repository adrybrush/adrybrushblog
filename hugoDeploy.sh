#!/bin/sh

#build project
hugo --theme=beautifulhugo

#Add changes to git
git add .
git commit -m “building site”

#Push source and build repos.
git push origin master


cd public
git add .
git commit 
git push origin master