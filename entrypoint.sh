#!/bin/sh -l
DATA=$1
HOOK_SLACK_URL=$2

send_message() {
    curl -X POST -H 'Content-type: application/json' --data "{'text': '$DATA'}" $HOOK_SLACK_URL
    echo '::set-output name=success::true'
}

handle_error() {
    echo "Error: $1"
    echo '::set-output name=success::false'
    exit 1
}

send_message || handle_error "Sending message failed."
