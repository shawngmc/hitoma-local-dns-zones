#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Enable throw error if non-zero exit
set -e

cp $DIR/../etc/bind9/* /etc/bind
