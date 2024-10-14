#!/bin/bash

# Purpose: This script helps manage file and directory permissions by changing ownership and access permissions.
# It allows users to modify permissions and ownership using options and arguments.

# Function to display usage information
function display_help {
  echo "Usage: $0 [OPTIONS] <file or directory>"
  echo "Options:"
  echo "  -u <username>        Change the owner of the file/directory"
  echo "  -g <group>           Change the group of the file/directory"
  echo "  -p <permissions>     Change the permissions using numeric or symbolic notation (e.g., 755 or u+rwx)"
  echo "  -h                   Display this help message"
  echo "Example: $0 -u root -g admin -p 755 /path/to/file"
  exit 1
}

# Check if no arguments are provided
if [[ $# -eq 0 ]]; then
  echo "Error: No arguments provided."
  display_help
fi

# Parse command-line options
while getopts "u:g:p:h" opt; do
  case ${opt} in
    u ) 
      username=$OPTARG
      ;;
    g ) 
      group=$OPTARG
      ;;
    p ) 
      permissions=$OPTARG
      ;;
    h ) 
      display_help
      ;;
    \? ) 
      echo "Invalid option: -$OPTARG" 1>&2
      display_help
      ;;
  esac
done
shift $((OPTIND -1))

# Check if a file or directory is provided
target=$1
if [[ -z "$target" || ! -e "$target" ]]; then
  echo "Error: Please provide a valid file or directory."
  exit 1
fi

# Change ownership if username is provided
if [[ ! -z "$username" ]]; then
  echo "Changing owner of $target to $username"
  sudo chown $username "$target"
fi

# Change group if group is provided
if [[ ! -z "$group" ]]; then
  echo "Changing group of $target to $group"
  sudo chgrp $group "$target"
fi

# Change permissions if provided
if [[ ! -z "$permissions" ]]; then
  echo "Changing permissions of $target to $permissions"
  sudo chmod $permissions "$target"
fi
