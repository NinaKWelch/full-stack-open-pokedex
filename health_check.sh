#!/bin/bash

# exit status 0 means that the script "succeeds" and 1 that the script "fails"

response=$(curl --location --request GET "https://winter-flower-5452.fly.dev/health")

if [[ $response == 'ok' ]]; then
  exit 0
fi

if [[ $response != 'ok' ]]; then
  exit 1
fi
