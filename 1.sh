#!/bin/zsh

# Function to display a welcome message
welcome_message() {
    echo "Welcome to the demo ZSH script!"
}

# Function to list files in the current directory
list_files() {
    echo "Files in the current directory:"
    ls -l
}

# Function to count lines in a file
count_lines() {
    local file=$1
    echo "Counting lines in $file:"
    awk 'END {print NR}' $file
}

# Main function
main() {
    welcome_message
    list_files
    echo ""
    count_lines "demo.zsh"  # Count lines in this script file
}

# Call the main function
main
