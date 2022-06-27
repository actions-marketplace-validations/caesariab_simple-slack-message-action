#!/bin/sh -l
DATA=$1
HOOK_SLACK_URL=$2

send_message() {
    curl -X POST -H 'Content-type: application/json' --data "{'text': '$DATA'}" $HOOK_SLACK_URL
    set_success "true"
}

set_success() {
    echo "::set-output name=success::$1"
}
handle_error() {
    echo "Error: $1"
    set_success "false"
    exit 1
}

send_message || handle_error "Sending message failed."
