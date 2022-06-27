# simple-slack-message-action

This action prints "Hello World" or "Hello" + the name of a person to greet to the log.

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