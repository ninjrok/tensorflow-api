#!/usr/bin/env bash

set -e

if [ -z "${PORT}" ]; then
    echo "No port specified. Using port 6006."
    JUPYTER_PORT=8888
else
    echo "Using port "${JUPYTER_PORT}
fi

echo "Starting Jupyter notebook..."
exec jupyter notebook --no-browser --allow-root --port ${JUPYTER_PORT} --ip 0.0.0.0