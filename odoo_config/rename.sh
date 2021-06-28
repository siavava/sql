#!/bin/bash
#
# bash script to rename a file.
#
# author: Amittai J. Wekesa
#
# Usage: ./rename.sh

# Take the original filename
read -p "Enter the original filename: " old_name
# Take the renamed filename
read -p "Enter the new filename: " new_name

# Check the original file exists or not
if [ -f "$old_name" ]; then
  # Check the rename filename exists or not
  if ! [ $(mv -i "$old_name" "$new_name") ]; then
    printf "%s" "$old_name" " migrated to " "$new_name"
    printf ".\n"
  else
    printf "Error migrating file.\n"
  fi
else
  printf "\nFile not found.\n"
fi
