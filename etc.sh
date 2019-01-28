#!/bin/bash
declare -r BPATH=/etc/
declare -r BOUT="etc"
declare -r DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

source "$DIR"/run.sh
