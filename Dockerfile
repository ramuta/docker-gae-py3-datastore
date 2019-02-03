FROM google/cloud-sdk

RUN apt-get update
RUN apt-get install -y python3-pip python3-setuptools python3-venv
RUN pip2 install grpcio

ADD ./app /app
WORKDIR /app
