#!/bin/bash

# Check if URL is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 <url>"
    exit 1
fi

# Set the URL variable
url="$1"

# Extract domain from the URL
domain=$(echo "$url" | awk -F[/:] '{print $4}')

# Check if the domain is extracted
if [ -z "$domain" ]; then
    echo "Error: Unable to extract domain from the URL"
    exit 1
fi

# Create a directory based on the domain
mkdir -p "$domain"

# Change to the directory
cd "$domain" || exit

# Run wget with the specified parameters
wget \
    --recursive \
    --level 5 \
    --no-clobber \
    --page-requisites \
    --adjust-extension \
    --span-hosts \
    --convert-links \
    --restrict-file-names=windows \
    --domains "$domain" \
    --no-parent \
    "$url"
    
# Check the exit status of wget
if [ $? -eq 0 ]; then
    echo "Download complete"
else
    echo "Download failed"
    exit 1
fi