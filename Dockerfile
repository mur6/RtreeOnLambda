FROM python:3.7.5-slim-buster
RUN apt-get update -qq
RUN apt-get install -y -qq --no-install-recommends libspatialindex-c5
# RUN apt-get update && \
#     apt-get install -y cmake
#     # apt-get clean && \
#     # rm -rf /var/lib/apt/lists/*
