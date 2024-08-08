#!/bin/bash

if [ -z "${PROJ_NAME}" ]; then
    echo "Please set the PROJ_NAME environment variable."
    exit 1
fi

mv crates/PROJ_NAME-core crates/$PROJ_NAME-core

# List of files to update
files=("Cargo.toml" "crates/$PROJ_NAME-core/Cargo.toml" "README.md")

# Iterate over each file and apply sed replacement
for file in "${files[@]}"; do
    sed -i 's/PROJ_NAME/viziq/g' "$file"
done

echo "Project name updated to $PROJ_NAME in all specified files."

