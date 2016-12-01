#/bin/bash
git checkout -b gh-pages
git config user.name "Travis Auto"
git config user.email "automated@logging.err"
mv publishedVersion.pdf ./proofs/publishedVersion.pdf
git add .
git commit -m "new successful version"
git push -f -q https://benyomin:$GH_TOKEN@github.com/benyomin/benyomin.github.io-gh-pages gh-pages &2>/dev/null

