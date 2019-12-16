# melon-ticket-actions

[![Build Status](https://github.com/mooyoul/melon-ticket-actions/workflows/workflow/badge.svg)](https://github.com/mooyoul/melon-ticket-actions/actions)
[![Semantic Release enabled](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg)](https://github.com/semantic-release/semantic-release)
[![Renovate enabled](https://img.shields.io/badge/renovate-enabled-brightgreen.svg)](https://renovatebot.com/)
[![MIT license](http://img.shields.io/badge/license-MIT-blue.svg)](http://mooyoul.mit-license.org/)

GitHub action that checks ticket availability in Melon Ticket (Korean online ticket store) website.

~~암표상들 다 망해라~~ 그리핀 내한공연 보게 해주세요 🙏

-----

![slack](assets/slack.png)

### ⭐️ 존버는 승리한다 ⭐️

![won](assets/won.jpg)

## Usage

Please see [example workflow](https://github.com/mooyoul/melon-ticket-actions/blob/1c5a56b9cdd594051d856c16b020f0c5835f6955/.github/workflows/example.yml), or [Workflow Log](https://github.com/mooyoul/melon-ticket-actions/actions?query=workflow%3Aexample) 

## Sample Github Actions Configuration 

```yaml
name: example
on:
  schedule:
    - cron: '*/5 * * * *' # Every 5 minutes
jobs:
  job:
    runs-on: ubuntu-latest
    timeout-minutes: 5
    steps:
      - name: Check Tickets
        uses: mooyoul/melon-ticket-actions@v1.1.0
        with:
          product-id: 204755
          schedule-id: 100001
          seat-id: 1_0
          slack-incoming-webhook-url: ${{ secrets.SLACK_WEBHOOK_URL }}
          message: '<@U12345678> 달려달려~'
```

## License

[MIT](LICENSE)

See full license on [mooyoul.mit-license.org](http://mooyoul.mit-license.org/)
