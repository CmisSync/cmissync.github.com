find . -name "*.html" -print | xargs sed -i 's/0\.3\.6/0\.3\.7/g'
git add alfresco/index.html google-drive/index.html index.html nuxeo/index.html upgrade-version.sh
git commit -m "Bumped version"
git push
