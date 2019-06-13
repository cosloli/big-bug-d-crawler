# D-crawler-sys (BIG BUG)

#### 介绍
大数据软件技术大作业：分布式爬虫 BIG BUG
使用了 redis, hbase

一开始还考虑到使用 zookeeper 做状态管理，用redis布隆过滤器插件做重复url的剔除。

但因为时间不够放弃了




#### 安装教程

1. 分布式安装配置 redis，hdfs，hbase （其中redis-cluster的配置相当的繁琐）

2. 安装python3.6，pypi

3. 找到 pip-requirements.txt 文件，执行命令： `pip install -r requriements.txt`

   

#### 使用注意点

1. 使用前先对 config 文件夹下各文件进行配置，主要是配置 redis, hbase-thrift 的 host 和 端口号。

2. 要特别注意 redis-conf.json文件

   single_node_mode 为 true 时，使用单机配置，即 "host","ip"；为 false 使用集群配置，即 "master_nodes"

```json
{
    "single_node_mode":false,
    "host":"localhost", 
    "port":6379,
    "decode_responses":true,
    "namespace":"crawler",
    "queue_name":"queue",
    "close_set_name":"close_set",
    "master_nodes":[
        {"host":"192.168.133.128","port":"7001"},
		{"host":"192.168.133.128","port":"7002"},
		{"host":"192.168.133.128","port":"7003"}
    ]
}
```

