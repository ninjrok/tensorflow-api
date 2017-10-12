FROM tensorflow/tensorflow:nightly-gpu-py3

MAINTAINER "ninjrok@gmail.com"

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install protobuf-compiler python-pil \
    python-lxml git python-pip
RUN git clone https://github.com/tensorflow/models.git /tensorflow-api/models/
ADD bin/run_sample.sh bin/run_jupyter.sh /tensorflow-api/
RUN mkdir -p /tensorflow-api/logs/supervisor/ /tensorflow-api/logs/tensorboard/
RUN pip2 install supervisor==3.3.1
ADD supervisor/supervisord.conf /etc/supervisor/
ADD supervisor/tensorboard.conf supervisor/jupyter.conf /etc/supervisor/conf.d/

RUN cd /tensorflow-api/models/research && protoc object_detection/protos/*.proto --python_out=.

WORKDIR /tensorflow-api/

CMD /usr/local/bin/supervisord --nodaemon