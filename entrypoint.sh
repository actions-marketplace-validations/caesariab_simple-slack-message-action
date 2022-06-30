#!/bin/sh -l
DATA=$1
HOOK_SLACK_URL=$2

send_message() {
    curl -X POST -H 'Content-type: application/json' --data "{'text': '$DATA'}" $HOOK_SLACK_URL 1>/dev/null &&
        echo "::set-output name=success_status::true"

}

handle_error() {
    echo "Error: $1"
    echo "::set-output name=success_status::false"
}

echo "::set-output name=action_fruit::blueberry"
send_message || handle_error "Sending message failed."
