#!/bin/bash

counter=1

# Rename all files in the directory except the script file
for file in *; do
    if [ "$file" != "bash.sh" ]; then
        filename=$(basename "$file")
        parts=(${filename//-/ })
        new_name="${counter}-${parts[-1]}"
        mv "$file" "$new_name"
        counter=$((counter+1))
    fi
done