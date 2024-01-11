# 当前主机IP或hostname
export GITLAB_HOSTNAME='130.211.249.253'


# 部署pg，redis，两个gitlab，haproxy
docker compose up -d

echo ""
echo "================================================="
echo “负载均衡访问地址”
echo "LB：          http://${GITLAB_HOSTNAME}:9999"
echo "nexus-0:   http://${GITLAB_HOSTNAME}:8081"
echo "nexus-1:   http://${GITLAB_HOSTNAME}:8082"
echo "================================================="
echo ""

# HAPROXY日志 
docker compose logs syslog-sidecar  -f

