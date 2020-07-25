#!/usr/bin/env bash

set -eux

BASEDIR=$(dirname $(readlink -f "$0"))
cd "$BASEDIR/.."
echo "=> Deploying in $(pwd)"
git pull
alembic upgrade head
