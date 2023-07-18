#!/bin/bash

TARGET_DIR="/home/michael/Downloads"

declare -A folders = (
	["pdf"] = "Documents"
	["txt"] = "Documents"
	["jpg"] = "Images"
	["png"] = "Images"
	["jpeg"] = "Images"
	["zip"] = "Compress"
	["rar"] = "Compress"
)

for file in "$TARGET_DIR"/*;do
	if [[ -f "$file" ]]; then
		extension="${file##*.}"

		if [[-v folders["$extension"]]];then
			folder= "${folders["$extension"]}"
			mkdir -p "$TARGET_DIR/$folder"

			mv "$file" "$TARGET_DIR/$folder"

			echo "Moved $file to $TARGET_DIR/$folder"
		fi
	fi
done



