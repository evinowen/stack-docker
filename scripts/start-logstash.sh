#!/bin/bash

# Make prerequisite directories.
mkdir -p /usr/share/logstash/pipelines
mkdir -p /usr/share/logstash/config
mkdir -p /usr/share/logstash/config/certs/ca

# Copy read-only, root-owned files over to destinations.
cp /usr/share/logstash/ro/pipeline/logstash.conf /usr/share/logstash/pipeline/logstash.conf
cp /usr/share/logstash/ro/config/logstash.yml /usr/share/logstash/config/logstash.yml
cp /usr/share/logstash/ro/config/logstash.keystore /usr/share/logstash/config/logstash.keystore
cp /usr/share/logstash/ro/config/certs/ca/ca.crt /usr/share/logstash/config/certs/ca/ca.crt

# Run original docker-entrypoint.
/usr/local/bin/docker-entrypoint
