#/bin/sh
docker run -d -p 8888:8888 --name jupyter -v "$(pwd):/home/jovyan/work" tjhei/scipy-notebook
