ARG BASE_CONTAINER=jupyter/all-spark-notebook
FROM $BASE_CONTAINER

USER root

RUN pip install jupyterlab-s3-browser && \
  jupyter lab build && \
  jupyter lab clean
