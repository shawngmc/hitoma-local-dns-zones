#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Enable throw error if non-zero exit
set -e

named-checkconf $DIR/../etc/bind/named.conf.local
named-checkzone hitoma.com $DIR/../etc/bind/hitoma.com.db
named-checkzone hitoma.com $DIR/../etc/bind/hitoma.com.rev
