# Fall 2026: MATH-8650

Open on binder using https://mybinder.org/v2/gh/tjhei/2026Fall-8650/HEAD

## Jupyter instructions

There are several options to run/edit Jupyter notebooks:

### Option 1: Using Binder

This runs on free resources online and might be slow and/or lose your data (make sure you download your notebook when you are done!):

https://mybinder.org/v2/gh/tjhei/2026Fall-8650/HEAD


### Option 2: Install Yourself

Install Jupyterlab on your own machine (for example using docker):

    docker run --rm -p 8888:8888 tjhei/scipy-notebook

I personally use the script `run-jupyter-in-docker.sh` in this repository to run. It additionally makes sure that the correct permissions are set.

To be able to run Docker, first install Docker Desktop available at https://www.docker.com/products/docker-desktop

If you want to use notebook files without having to import/upload them, you can mount the current folder into the container:

    docker run --rm -p 8888:8888 -v "$(pwd):/home/jovyan/work" tjhei/scipy-notebook

Note: The container tjhei/scipy-notebook is based on quay.io/jupyter/scipy-notebook:latest with some additional software installed.

### Option 3: Clemson Palmetto Cluster

(you will need an account enabled for this course)

Access "OnDemand" on the Palmetto cluster at https://ondemand.rcd.clemson.edu/

Click "Interactive Apps" -> "Jupyter Notebook"

When running a Jupyter session, you might want to specify a longer "walltime" than the default.

Help page: https://docs.rcd.clemson.edu/openod
