#!/bin/bash
# label.sh
#
today=`date +%Y-%m-%d.%H:%M:%S`
filename="paperVersion$today.pdf"
#echo $filename;
cp publishedVersion.pdf $filename
#git checkout branch -- file
#git checkout branch -- "path/file.txt"
mv $filename versions/$filename
git config user.name "benyomin"
git config user.email "jon@msnbs.co.uk"
cd versions
git add $filename
git commit -m "$filename"
git push --force --quiet "https://${GH_TOKEN}@github.com/benyomin/benyomin.github.io.git" master:deploy > /dev/null 2>&1
rm *.*
