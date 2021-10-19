#!/bin/bash
# if [ "$1" = "--list" ]
# then
echo ----------------
app="app"
db="db"
tf_env="/var/otus/ktvGIT_infra/terraform/stage"
appserver=`cd $tf_env && terraform output | grep -E -o "(.*$app.*)([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
dbserver=`cd $tf_env && terraform output | grep -E -o "(.*$db.*)([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`

# cd ansible/environments/stage/group_vars
cd /var/otus/ktvGIT_infra/ansible/environments/stage/group_vars && sudo sed -i.bak2 -r 's/(db_host:.*)/db_host: '$dbserver'/g' app
cd /var/otus/ktvGIT_infra/ansible/environments/stage/group_vars && cat app

#  echo $appserver
#  echo $dbserver

# tf_env="/var/otus/ktvGIT_infra/terraform/prod"
# appserver=`cd $tf_env && terraform output | grep -E -o "(.*$app.*)([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`
# dbserver=`cd $tf_env && terraform output | grep -E -o "(.*$db.*)([0-9]{1,3}[\.]){3}[0-9]{1,3}" | grep -E -o "([0-9]{1,3}[\.]){3}[0-9]{1,3}"`

#  sudo sed -i.bak1 -r 's/(db_host:.*)/db_host: '$dbserver'/g' ansible/environments/prod/group_vars/app
#  cat ansible/environments/prod/group_vars/app

# fi
