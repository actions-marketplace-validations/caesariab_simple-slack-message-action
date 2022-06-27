# simple-slack-message-action

This action sends a simple message to a custom incoming webhook for a slackbot, either paid or free.

## Inputs

## `send-data`

**Required** The message to be posted in the channel. Default `"Hello, World"`.

## `slack-hook-url`

**Required** The name of the incoming webhook url to your slack bot. Default `""`.


## Outputs

## `success`

The success status of the action. Return `true/false`.

## Example usage

uses: caesariab/simple-slack-message-action@v1.4.0
with:
  slack-hook-url: ${{ secrets.SLACK_HOOK_URL }}
  send-data: "This is a simple message"