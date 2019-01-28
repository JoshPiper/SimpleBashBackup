#!/bin/bash

if [ -z "$MOUNT_SRC" ]
then
	# The destination for backed up files. Local or remote.
	declare -r MOUNT_SRC="backup@example.com:/home/backup"
	# Mount path. Normally a drive in /media.
	declare -r MOUNT_PATH="/media/backup"
fi

backup_mount(){
	mount "$MOUNT_SRC" "$MOUNT_PATH"
}

backup_unmount(){
	umount "$MOUNT_PATH"
}

backup_filename(){
	local date=$(date --rfc-3339=date)
	echo "backup-$1-$date"
}

backup_send(){
	mkdir -p "$MOUNT_PATH/$2"
	rsync -a --no-o --no-g --no-p --progress --exclude-from "$DIR"/excludes.txt "$1" "$MOUNT_PATH/$2"
}
