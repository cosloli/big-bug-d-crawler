# host IP 应该设置成公网IP
export host_ip="localhost"

# 本地IP
export localhost_ip="localhost"

# 项目根目录
export project_root_path=`(cd $(dirname $0);pwd)`

# server 根目录
export server_root_path="${project_root_path}/server"

# crawler 根目录
export crawler_root_path="${project_root_path}/crawler"

# config 根目录
export config_root_path="${project_root_path}/config"