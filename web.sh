#!/bin/bash
declare -r BPATH="/var/www"
declare -r BOUT="web/files"
declare -r DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source "$DIR"/run.sh
