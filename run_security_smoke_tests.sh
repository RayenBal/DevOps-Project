#!/bin/bash

# Define the URL of your service (replace with your actual service URL and port)
URL="http://localhost:8080/health"

# Use curl to check if the service is up
response=$(curl --write-out "%{http_code}" --silent --output /dev/null $URL)

# Check the response code
if [[ "$response" -eq 200 ]]; then
    echo "PASS: Service is up and healthy (HTTP 200)."
else
    echo "FAIL: Service is down or unresponsive. HTTP Code: $response"
    exit 1
fi
