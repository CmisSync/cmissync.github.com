find . -name "*.html" -print | xargs sed -i 's/0\.4\.2/0\.4\.3/g'

# Push all HTML files
git ls-files . | grep '\.html$' | xargs git add

git commit -m "Bumped version"
git push
