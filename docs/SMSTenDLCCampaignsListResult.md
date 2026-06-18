# Freeclimb::SMSTenDLCCampaignsListResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Total amount of requested resource. | [optional] |
| **start** | **Integer** | Resource index at start of current page | [optional] |
| **_end** | **Integer** | Resource index at end of current page | [optional] |
| **page** | **Integer** | Current page | [optional] |
| **num_pages** | **Integer** | Total number of pages | [optional] |
| **page_size** | **Integer** | Number of items per page | [optional] |
| **next_page_uri** | **String** | Uri to retrieve the next page of items | [optional] |
| **campaigns** | [**Array&lt;SMSTenDLCCampaign&gt;**](SMSTenDLCCampaign.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "total": 0,
  "start": 0,
  "end": 0,
  "page": 0,
  "numPages": 0,
  "pageSize": 0,
  "nextPageUri": "string",
  "campaigns": [
    {
      "campaignId": "CX56XX4",
      "accountId": "AC0123456789abcdefABCDEF0123456789abcdef05",
      "cspId": "SX56XX4",
      "brandId": "BX56XX4",
      "usecase": "2FA",
      "description": "mock campaign.",
      "subUsecases": [],
      "resellerId": null,
      "sample1": "Your verification code from FreeClimb is 000000. It expires in 10 minutes.",
      "sample2": null,
      "sample3": null,
      "sample4": null,
      "sample5": null,
      "messageFlow": null,
      "helpMessage": null,
      "referenceId": null,
      "status": "EXPIRED",
      "mock": true,
      "autoRenewal": false,
      "embeddedLink": false,
      "embeddedPhone": false,
      "affiliateMarketing": false,
      "numberPool": false,
      "ageGated": false,
      "directLending": false,
      "subscriberOptin": true,
      "subscriberOptout": false,
      "subscriberHelp": true,
      "createDate": "2022-07-05T15:17:05Z",
      "billedDate": "2022-07-05T00:00:00Z",
      "nextRenewalOrExpirationDate": null
    }
  ]
}'

# create an instance of SMSTenDLCCampaignsListResult from a JSON string
instance = Freeclimb::SMSTenDLCCampaignsListResult.build_from_hash(JSON.parse(json))
```

