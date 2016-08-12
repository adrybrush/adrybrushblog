#!/bin/bash

#build project
hugo --theme=beautifulhugo

#Add changes to git
git add -A

#Commit changes

git commit -m “rebuilding site”

#Push source and build repos.

git push origin master
git subtree push --prefix=public git@github.com:adrybrush/adrybrushblog.git gh-pages