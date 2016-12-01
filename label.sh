#!/bin/bash
# label.sh
#
today=`date +%Y-%m-%d.%H:%M:%S`
filename="test$today.gif"
echo $filename;
git checkout deploy -- versions
cp test2.gif  versions/$filename
cd versions
ls
cd ..
git add .
git commit -m "$filename"
git push - u origin deploy
git checkout master
rm -rd versions

