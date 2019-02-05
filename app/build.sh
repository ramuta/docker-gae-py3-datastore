#!/usr/bin/env bash

(gcloud beta emulators datastore start --host-port=0.0.0.0:8081 &) &&
(dev_appserver.py app.yaml -A test --host=0.0.0.0 --admin_host=0.0.0.0 --api_host=0.0.0.0 --api_port=9000 --support_datastore_emulator=true --datastore_emulator_port=8081 --running_datastore_emulator_host=0.0.0.0)
