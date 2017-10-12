#!/bin/bash

set -e

export PYTHONPATH=$PYTHONPATH:/tensorflow-api/models/research/:/tensorflow-api/models/research/slim
cd /tensorflow-api/models/research/

exec python3 object_detection/builders/model_builder_test.py