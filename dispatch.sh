repo="https://github.com/huang12zheng/flutter_rust_bridge_template"

# step0: pre-startup
brew install just
# step1: clone
git clone https://github.com/Desdaemon/flutter_rust_bridge_template app_schema
# step2: patch
# cp -R . .. 
ls . |grep -v "app_schema" | awk '{ print "cp -R "$0" app_schema"}' | sh
cd app_schema && rm dispatch.sh
# step2: push
git remote rm origin
git remote add origin $repo
git add *
git commit -m "patch finish"
git push --set-upstream origin patch