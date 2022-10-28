### 所有文件放到/root/ip  目录，

```
docker run -d     \
--restart unless-stopped \
--name ip \
-e auth_email="user@domain.com" \
-e auth_key="e75e6139dad95937edec1277c9d4616bbd1eb" \
-e zone_name="domain.com" \
-e record_name="test.domain.com" \
--net=host pppv/ddns
```

### 需要重新构建的话：

```
docker build -t pppv/ddns:latest  
```
