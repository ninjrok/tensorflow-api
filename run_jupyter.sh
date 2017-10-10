#!/usr/bin/env bash

set -e

if [ -z "${PORT}" ]; then
    echo "No port specified. Using port 6006."
    PORT=6006
else
    echo "Using port "${PORT}
fi

echo "Starting Jupyter notebook..."
exec jupyter notebook --no-browser --allow-root --port ${PORT}