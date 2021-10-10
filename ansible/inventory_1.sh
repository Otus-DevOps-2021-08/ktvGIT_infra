#!/bin/bash
if [ "$1" = "--list" ]
then
# set -e
# cat ./inventory2.json
ansible-inventory --list
fi