#!/bin/bash
#
# Configure Cassandra seed nodes.

# Give Kubernetes time to add the new pod to the cassandra peer discovery service before we query DNS
sleep 5

my_ip=$(hostname --ip-address)

export ZOO_MY_ID=${HOSTNAME##*-}


## /docker-entrypoint.sh "$@"
exec /docker-entrypoint.sh "$@"
