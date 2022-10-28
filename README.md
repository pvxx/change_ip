### 一键部署，

```
docker run -d     \
--restart unless-stopped \
--name ip \
-e auth_email="user@domain.com" \  #cloudflare 用户邮箱
-e auth_key="e75e6139dad95937edec1277c9d4616bbd1eb" \ #cloudflare APIkey
-e zone_name="domain.com" \ #域名
-e record_name="test.domain.com" \ #记录名
--net=host pppv/ddns
```

### 需要重新构建的话：

```
docker build -t pppv/ddns:latest  
```
