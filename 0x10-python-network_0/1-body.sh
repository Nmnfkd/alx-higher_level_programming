#!/bin/bash

if [ -z "$1" ]; then
    echo "Please provide a URL as an argument."
    exit 1
fi

url="$1"

# Make the GET request using curl and extract the response body
response_body=$(curl -s "$url")
response_code=$(curl -s -o /dev/null -w "%{http_code}" "$url")

if [ "$response_code" -eq 200 ]; then
    echo "$response_body"
else
    echo "Error: The server returned a $response_code status code."
fi
