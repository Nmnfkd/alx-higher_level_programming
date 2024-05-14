#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: $0 <URL> <FILENAME>"
    exit 1
fi

url="$1"
filename="$2"

if [ ! -f "$filename" ]; then
    echo "Error: $filename does not exist"
    exit 1
fi

response=$(curl -X POST -H "Content-Type: application/json" -d "@$filename" "$url" 2>/dev/null)
status_code=$(echo "$response" | head -n 1 | cut -d' ' -f2)

echo "$response"
echo "Status code: $status_code"
