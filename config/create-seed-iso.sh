#!/bin/bash

echo "instance-id: $(uuidgen || echo $RANDOM)" > meta-data
echo "local-hostname: vm-01" >> meta-data

cloud-localds seed.iso user-data meta-data
