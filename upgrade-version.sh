find . -name "*.html" -print | xargs sed -i 's/0\.4\.12/0\.4\.13/g'

# Push all HTML files, and self
git ls-files . | grep '\.html$' | xargs git add
git add upgrade-version.sh

git commit -m "Bumped version"
git push
