#!/bin/bash
declare -r BPATH=~/
declare -r BOUT="my-home"
declare -r DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source "$DIR"/run.sh
