#!/bin/sh
HOST=$1
INVENTORY=$(echo $HOST | cut --delimiter="-" --fields=4)
IPV4=$(cat ocs_inventory/$INVENTORY.json | jq --raw-output .meta/hostvars."\"$HOST"\".ipv4)
#ssh $IPV4
