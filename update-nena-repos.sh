#!/bin/bash

# Loop through all directories in the current location
for dir in NENA911/*; do
    # Check if the directory contains a .git folder (indicating it's a git repo)
    if [ -d "$dir/.git" ]; then
        echo "Updating repository: $dir"
        pushd "$dir" > /dev/null || exit
        git pull
        popd > /dev/null
    else
        echo "Skipping: $dir (not a git repository)"
    fi
done

echo "All repositories updated."
