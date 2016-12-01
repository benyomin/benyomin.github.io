#!/bin/bash
# label.sh
#
today=`date +%Y-%m-%d.%H:%M:%S`
filename="paperVersion$today.pdf"
echo $filename;
cd versions
cp ../publishedVersion.pdf ./$filename
ls
git config user.name "Travis-CI"
git config user.email "jon@msnbs.co.uk"
git add $filename
git commit -m "$filename"
git push --force --quiet "https://${GH_TOKEN}@github.com/benyomin/benyomin.github.io.git" master:deploy > /dev/null 2>&1
cd ..
rm -rd versions

