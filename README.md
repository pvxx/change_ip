### 所有文件放到/root/ip  目录，

```
docker run -d   -v /root/ip/my-cron:/root/ip/my-cron -v /root/ip/cf-ddns.sh:/root/ip/cf-ddns.sh  --restart unless-stopped --name ip --net=host pppv/change_ip
```

### 需要重新构建的话：

```
docker build -t pppv/change_ip:latest  
```
