FROM tensorflow/tensorflow:nightly-gpu-py3

MAINTAINER "ninjrok@gmail.com"

RUN apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install protobuf-compiler python-pil python-lxml git
RUN git clone https://github.com/tensorflow/models.git /tensorflow-api/models/
ADD requirements.txt run_sample.sh /tensorflow-api/
RUN pip3 install -r /tensorflow-api/requirements.txt
RUN cd /tensorflow-api/models/research && protoc object_detection/protos/*.proto --python_out=.

WORKDIR /tensorflow-api/
EXPOSE 6006

CMD ["jupyter", "notebook", "--no-browser", "--allow-root", "--port", "6006"]