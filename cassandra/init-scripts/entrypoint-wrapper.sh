#!/bin/bash

if [[ -n "$CASSANDRA_KEYSPACE" && $1 = 'cassandra' ]]; then
	  # Create default keyspace for single node cluster
	  CQL="CREATE KEYSPACE IF NOT EXISTS $CASSANDRA_KEYSPACE WITH REPLICATION = {'class': 'SimpleStrategy', 'replication_factor': 1}; USE $CASSANDRA_KEYSPACE;"
	  until echo "${CQL}" | cqlsh; do
	    echo "cqlsh: Cassandra is unavailable - retry later"
	    sleep 5
	  done &
	fi


	exec /usr/local/bin/docker-entrypoint.sh "$@"