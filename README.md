
# simple-slack-message-action

The simple-slack-message-action sends a simple message to a custom incoming webhook for a slackbot, either paid or free.

![GitHub tag (latest SemVer)](https://img.shields.io/github/v/tag/caesariab/simple-slack-message-action?sort=semver)


## Inputs

## `send-data`

**Required** The message to be posted in the channel.

Default `"Hello, World"`.

## `slack-hook-url`

**Required** The name of the incoming webhook url to your slack bot. 

Default `""`.


## Outputs

## `success`

The success status of the action. Return `true/false`.

## Example usage
```yaml
uses: caesariab/simple-slack-message-action@vX.X.X
with:
  slack-hook-url: ${{ secrets.SLACK_HOOK_URL }}
  send-data: "This is a simple message"
```

**NOTE**: *It is recommended to add and consume the slack-hook-url from your repository secrets.*

[Github Documentation for adding secrets to repository](https://docs.github.com/en/actions/security-guides/encrypted-secrets#creating-encrypted-secrets-for-a-repository)
