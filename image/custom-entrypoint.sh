#!/bin/bash
#
# Configure Cassandra seed nodes.

# Give Kubernetes time to add the new pod to the cassandra peer discovery service before we query DNS
sleep 15

my_ip=$(hostname --ip-address)

index=${HOSTNAME##*-}
ZOO_MY_ID=$(($index+1))
export ZOO_MY_ID


## /docker-entrypoint.sh "$@"
exec /docker-entrypoint.sh "$@"
