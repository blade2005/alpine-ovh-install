#!/bin/bash -e
source install.env utils.sh
bin/01-prepare-disks.sh
bin/02-install-alpine-base.sh

bin/03-install-alpine
