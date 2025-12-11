#!/usr/bin/env bash
set -e

HOST=${1:-localhost}
PORT=${2:-8083}

echo "Waiting for Kafka Connect at http://${HOST}:${PORT}..."

until curl -s "http://${HOST}:${PORT}/connectors" >/dev/null 2>&1; do
  sleep 3
done

echo "Kafka Connect is up."
