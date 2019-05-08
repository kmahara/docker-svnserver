#!/bin/sh

if [ ! -f /.dockerenv ]; then
	echo "docker 内で実行してください。"
	exit 1
fi

cp -a /tmp/conf/* /etc/httpd/conf/
cp -a /tmp/conf.d/* /etc/httpd/conf.d/
cp -a /tmp/bin/* /usr/local/bin/

mkdir -p /data/svn/repos
touch /data/svn/htpasswd
