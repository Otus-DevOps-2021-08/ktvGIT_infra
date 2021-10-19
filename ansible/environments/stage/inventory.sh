#!/bin/bash
# if [ "$1" = "--list" ]
# then
app="app"
db="db"
tf_env="/var/otus/ktvGIT_infra/terraform/stage"
appserver=`cd $tf_env && terraform output | grep -E -o "(.*$app.*)([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
dbserver=`cd $tf_env && terraform output | grep -E -o "(.*$db.*)([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`



 echo $appserver
 echo $dbserver

 sudo sed -i.bak1 -r 's/(appserverini.*)/appserverini ansible_host='$appserver'/g' inventory
 sudo sed -i.bak2 -r 's/(dbserverini.*)/dbserverini ansible_host='$dbserver'/g' inventory
 cat inventory
# fi
