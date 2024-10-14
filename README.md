# Permissions Manager Script

## Purpose

The `permissions_manager.sh` script is designed to simplify managing file and directory permissions on Linux/Unix systems. This script allows system administrators and users to quickly change the ownership, group, and permissions of files or directories with simple command-line options.

## Features

- **Change Ownership**: Allows changing the owner of a file or directory using the `-u` option.
- **Change Group**: Allows changing the group ownership of a file or directory using the `-g` option.
- **Modify Permissions**: Supports modifying file permissions using numeric (e.g., `755`) or symbolic (e.g., `u+rwx`) notations with the `-p` option.
- **Help Option**: The `-h` option provides a detailed usage guide.

## Why It's Useful

- **Streamlined File Management**: Managing permissions and ownership of files and directories is a common task for system administrators. This script simplifies the process by providing a single command for these operations.
- **Quick Modifications**: Instead of running multiple commands (`chown`, `chmod`, `chgrp`), this script combines all of them into a single tool, saving time and reducing errors.
- **Customizable**: Users can easily adapt the script for more specific permission and ownership scenarios by modifying it.

## How to Use

1. Clone the repository:

2. Make the script executable:

3. Run the script with one of the following options:

- **To change the owner**:
  ```
  ./permissions_manager.sh -u username /path/to/file
  ```

- **To change the group**:
  ```
  ./permissions_manager.sh -g group /path/to/file
  ```

- **To modify permissions**:
  ```
  ./permissions_manager.sh -p 755 /path/to/file
  ```

4. **Help**: Display the usage guide:

## Example Usage

- To change the owner to `root` and the group to `admin` for a specific file:

- To set permissions to `755` for a directory:

## Error Handling

- If no file or directory is provided, or if an invalid target is specified, the script will output an appropriate error message.
- The script checks if the file or directory exists before applying any changes.

## License

This project is licensed under the MIT License.

## Contributors

- Jmatthews301(https://github.com/Jmatthews301)
