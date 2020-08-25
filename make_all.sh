#!/bin/bash
DOCKER_NETWORK = docker-hadoop_default
ENV_FILE = hadoop.env
# docker build -t vahidmostofi/hadoop-base ./base
# docker push vahidmostofi/hadoop-base

docker build -t vahidmostofi/hadoop-namenode ./namenode
docker build -t vahidmostofi/hadoop-datanode ./datanode
docker build -t vahidmostofi/hadoop-resourcemanager ./resourcemanager
docker build -t vahidmostofi/hadoop-nodemanager ./nodemanager
docker build -t vahidmostofi/hadoop-historyserver ./historyserver


docker push vahidmostofi/hadoop-namenode
docker push vahidmostofi/hadoop-datanode
docker push vahidmostofi/hadoop-resourcemanager
docker push vahidmostofi/hadoop-nodemanager
docker push vahidmostofi/hadoop-historyserver
	# docker build -t vahidmostofi/hadoop-submit:$(current_branch) ./submit

# wordcount:
# 	docker build -t hadoop-wordcount ./submit
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} vahidmostofi/hadoop-base:$(current_branch) hdfs dfs -mkdir -p /input/
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} vahidmostofi/hadoop-base:$(current_branch) hdfs dfs -copyFromLocal -f /opt/hadoop-3.2.1/README.txt /input/
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} hadoop-wordcount
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} vahidmostofi/hadoop-base:$(current_branch) hdfs dfs -cat /output/*
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} vahidmostofi/hadoop-base:$(current_branch) hdfs dfs -rm -r /output
# 	docker run --network ${DOCKER_NETWORK} --env-file ${ENV_FILE} vahidmostofi/hadoop-base:$(current_branch) hdfs dfs -rm -r /input
