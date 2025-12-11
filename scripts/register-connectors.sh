#!/bin/bash

echo "Registering Debezium MongoDB connector..."
curl -X POST -H "Content-Type: application/json" \
  --data @connect/debezium-mongo-connector.json \
  http://localhost:8083/connectors

echo ""
echo "Registering S3 Sink connector..."
curl -X POST -H "Content-Type: application/json" \
  --data @connect/s3-sink-connector.json \
  http://localhost:8083/connectors

echo ""
