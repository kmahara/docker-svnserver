# About this
Apache 2.4 + webdav

# How to build
./build.sh

# How to test run
./run.sh

# How to launch
```
docker run \
--name svnsever \
-v /data/svn:/data/svn \
-p 8080:80 \
kmahara/svnsever
```


# add svn user
```
docker exec -it svnserver svnuseradd username
```

# create svn repository
```
docker exec -it svnserver svnrepoadd reponame 
```



