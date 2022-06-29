#!/bin/sh

if [[ -z "${CASSANDRA_USER}" ]]
	echo "<CASSANDRA_USER> already set..."
then
	CASSANDRA_USER="cassandra"
fi

if [[ -z "${CASSANDRA_PASSWORD}"]]
	echo "<CASSANDRA_PASSWORD> already set..."
then
	CASSANDRA_PASSWORD="cassandra"
fi

create_aggregation_keyspaces()
{
  CQL="CREATE KEYSPACE IF NOT EXISTS cycling WITH replication = {'class': 'SimpleStrategy', 'replication_factor' : 1};"
  echo $CQL | cqlsh -u ${CASSANDRA_USER} -p ${CASSANDRA_PASSWORD}
}

create_aggregation_keyspaces
my
