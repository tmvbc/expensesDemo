#!/bin/sh

if [ $# -eq 0 ]
  then
    echo "Add a commit message"
    return 1
fi

git add .
git commit -m "$1"
git push origin master

# expenses.chodounsky.net
# 1LuaH6zWG2WLPwbU7MHTbXta1wzIOPxc2MQ_aP5lS7hM
REACT_APP_SHEET_ID=1LuaH6zWG2WLPwbU7MHTbXta1wzIOPxc2MQ_aP5lS7hM npm run build
cp -a build/. production/
cd production
git add .
git commit -m "$1"
git push origin production
cd ..

# github pages

npm run build
cp -a build/. demo/
cd demo
git add .
git commit -m "$1"
git push origin gh-pages
cd ..
