FROM vahidmostofi/hadoop-base

MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:9870/ || exit 1

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD run.sh /run.sh
RUN chmod a+x /run.sh

RUN pip3 install jupyter
RUN mkdir -p /training
WORKDIR /training

EXPOSE 9870
EXPOSE 8567

CMD ["/run.sh"]
