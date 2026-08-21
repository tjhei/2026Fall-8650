#/bin/sh
docker run --rm -p 8888:8888 --user root -e CHOWN_HOME=yes -e CHOWN_HOME_OPTS='-R' --name jupyter -v "$(pwd):/home/jovyan/work" tjhei/scipy-notebook
