#!/bin/bash
set -e

# wait a little bit so it can pass the interactive terminal properties
# bug in docker, reference: https://github.com/docker/docker/issues/25450
sleep 0.1
exec "$@"
