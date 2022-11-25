# cp -R . .. 
ls . | awk '{ print "cp -R "$0" .."}'
cd .. && rm dispatch.sh