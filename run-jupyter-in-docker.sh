#!/bin/sh

docker run --rm -p 8888:8888 --user $(id -u):$(id -g) --group-add users --name jupyter -v "$(pwd):/home/jovyan/work" tjhei/scipy-notebook
