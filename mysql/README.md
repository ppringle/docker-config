# mysql

To start a MySQL Docker container execute the following command: 

```
docker-compose -f ./mysql/docker-compose.yaml up
```

To remove the started MySQL Docker container, execute the following command:

```
docker-compose -f ./mysql/docker-compose.yaml down -v
```

## Verifying if the database user exists and can connect

In MySQL, each database user is defined with an IP address associated with it. For e.g. you could have a root user 
allowed to connect from localhost (127.0.0.1) but not from other IP addresses.

The **/scripts/init.sql** when executed, creates a MySQL user, **store_user*** capable of connecting to the MySQL 
instance from all IP addresses, due to the use of the wildcard parameter: '%'.

## Verifying the MySQL bind-address

```
mysqld --verbose --help | grep bind-address
```

It will display address to bind to, for example like this:

```
--bind-address=name IP address to bind to.
bind-address                                                 0.0.0.0
```