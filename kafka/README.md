# kafka

Script(s) are located within the **/opt/bitnami/kafka/bin** folder of the **kafka** container.

## Create a new topic

```
/opt/bitnami/kafka/bin/kafka-topics.sh --create --zookeeper SERVER-IP:2181 --replication-factor 1 --partitions 1 --topic test
```

## Delete a topic

```
/opt/bitnami/kafka/bin/kafka-topics.sh --delete --zookeeper SERVER-IP:2181 --topic test
```