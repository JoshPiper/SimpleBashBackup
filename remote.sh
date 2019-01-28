#!/bin/bash
declare -r BPATH="backup@your-remote-server:/home/"
declare -r BOUT="remote/home"
declare -r DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source "$DIR"/run.sh
