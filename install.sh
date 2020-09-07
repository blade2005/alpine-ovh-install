#!/bin/bash -e
export SCRIPT_BASE=$(pwd)
bin/01-prepare-disks.sh
bin/02-install-alpine-base.sh

bin/03-install-alpine
