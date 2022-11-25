# cp -R . .. 
git clone https://github.com/Desdaemon/flutter_rust_bridge_template app_schema
ls . |grep -v "app_schema" | awk '{ print "cp -R "$0" app_schema"}'
cd app_schema && rm dispatch.sh