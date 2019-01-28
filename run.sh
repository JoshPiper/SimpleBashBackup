#!/bin/bash

# Check the current user, so we can actually mount the backup path.
declare -r USER=$(whoami)
if [ "$USER" != "root" ]
then
	echo "This must run as root."
	exit 1
fi

# Grab our backup functions and make sure to unmount.
source "$DIR"/funcs.sh
trap "backup_unmount; exit" INT TERM EXIT

# Run the backup
backup_mount
backup_send "$BPATH" "$BOUT"
