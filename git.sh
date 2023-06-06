#!/bin/bash

# Check if directory argument is provided
if [ $# -eq 0 ]; then
    echo "Please provide the directory path as an argument."
    exit 1
fi

directory="$1"

# Change to the directory containing the files you want to commit
cd "$directory"

# Add all changed files to the staging area
git add .

# Commit the changes with a timestamp
timestamp=$(date '+%Y-%m-%d %H:%M:%S')
git commit -m "Automatic commit on $timestamp"

# Push the changes to the remote repository (assuming the branch is 'main')
git push origin main
