#!/bin/bash
declare -r DIR=$(realpath $(dirname "${BASH_SOURCE[0]}"))

source "$DIR"/funcs.sh
declare -r FIL=$(backup_filename sql).gz
declare -r BPATH="$DIR"/"$FIL"
declare -r BOUT="sql"

mysqldump --all-databases | gzip -c > "$BPATH"
source "$DIR"/run.sh
rm "$BPATH"
