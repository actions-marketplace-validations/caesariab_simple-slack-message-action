#!/bin/sh -l
DATA=$1
HOOK_SLACK_URL=$2
curl -X POST -H 'Content-type: application/json' --data "{'text': '$DATA'}" $HOOK_SLACK_URL
