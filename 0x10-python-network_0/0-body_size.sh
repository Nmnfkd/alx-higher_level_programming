#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a URL as an argument."
    exit 1
fi

url="$1"

# Make the request using curl and extract the Content-Length header value
content_length=$(curl -sI "$url" | grep "Content-Length" | awk -F': ' '{print $2}')

if [ -z "$content_length" ]; then
    echo "Unable to determine the size of the response body."
else
    echo "The size of the response body is $content_length bytes."
fi
