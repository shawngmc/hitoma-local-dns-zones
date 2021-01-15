#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Enable throw error if non-zero exit
set -e

named-checkconf $DIR/../etc/bind9/named.conf.local
named-checkzone hitoma.com $DIR/../etc/bind9/hitoma.com.db
named-checkzone hitoma.com $DIR/../etc/bind9/hitoma.com.rev
