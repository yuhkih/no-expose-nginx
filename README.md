# Overview 
以下の Qiita 記事の実験に使ったファイル
https://qiita.com/Yuhkih/items/418b6038f8fff5592467

## How to build
```
docker build . -t yuhkih/no-expose-nginx:latest 
```

## How to use
```
$ docker run --rm --name no-expose-test -p 80:8080 -d yuhkih/no-expose-nginx:latest
$ curl http://localhost 
Hello. This container doesn't use EXPOSE in dockerfile!
$ docker stop no-expose-test

```

