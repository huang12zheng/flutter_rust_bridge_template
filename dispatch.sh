repo="https://github.com/huang12zheng/flutter_rust_bridge_template"

git clone https://github.com/Desdaemon/flutter_rust_bridge_template app_schema
# cp -R . .. 
ls . |grep -v "app_schema" | awk '{ print "cp -R "$0" app_schema"}' | sh
cd app_schema && rm dispatch.sh

git remote rm origin
git remote add origin $repo
git push --set-upstream origin patch
git add *
git commit -m "patch finish"