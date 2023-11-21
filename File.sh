#!/bin/bash

# Displaying information about the program
echo "Author: Vlad Pinchuk"
echo "Program name: Removing large files"
echo "Description: This script deletes all files larger than a certain size"

# Endless cycle
while true
do
  # Request the path to the directory
  read -p "Enter directory path: " directory

  # Checking whether the specified directory exists
  if [ ! -d "$directory" ]; then
    echo "Directory does not exist" >&2
    continue
  fi

  # Requesting file size
  read -p "Enter the file size to delete (in bytes): " size
    # Check the correctness of the entered data
   if [[ ! "$size" =~ ^[0-9]+$ ]]; then
    echo "File size must be a number" >&2
    continue
  fi

  # Find all files larger than the specified size and dele
  find "$directory" -type f -size +"$size"c -exec rm -i {} +
 read -p "Do you want to continue? (y/n): " choice 
    if [ "$choice" != "y" ]; then
    exit 0
  fi
done


