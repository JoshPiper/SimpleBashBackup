#!/bin/bash

# The path to back up.
declare -r BPATH="/path/that/you/want/to/backup/"
# The path to output to in the mounted backup path.
declare -r BOUT="example"
declare -r DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source "$DIR"/run.sh
