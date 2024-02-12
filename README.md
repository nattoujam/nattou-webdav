# nattou-webdav
Docker Image of WebDAV on Caddy

## QuickStart
```
docker run --name nattou-webdav --net host \
  -v ./public:/app/public \
  nattoujam/nattou-webdav:1.0
```

BASIC認証のデフォルト値
- ユーザー名: test
- パスワード: test

### Customize Caddyfile
```
docker run --name nattou-webdav --net host \
  -v ./public:/app/public \
  -v ./Caddyfile:/app/Caddyfile \
  nattoujam/nattou-webdav:1.0
```

