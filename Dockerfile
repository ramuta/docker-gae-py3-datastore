FROM google/cloud-sdk

RUN apt-get update
RUN apt-get install -y python3-pip python3-setuptools python3-venv
RUN pip2 install grpcio

ADD ./app /app
WORKDIR /app

ENV DATASTORE_EMULATOR_HOST 0.0.0.0:8081
ENV CLOUDSDK_CORE_PROJECT test
ENV DATASTORE_PROJECT_ID test
ENV GOOGLE_CLOUD_PROJECT test
ENV DATASTORE_DATASET test
ENV DATASTORE_HOST http://0.0.0.0:8081
ENV DATASTORE_EMULATOR_HOST_PATH 0.0.0.0:8081/datastore
