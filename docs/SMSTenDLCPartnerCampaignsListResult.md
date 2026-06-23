# Freeclimb::SMSTenDLCPartnerCampaignsListResult

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
| **partner_campaigns** | [**Array&lt;SMSTenDLCPartnerCampaign&gt;**](SMSTenDLCPartnerCampaign.md) |  | [optional] |

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
  "partnerCampaigns": [
    {
      "campaignId": "CX56XX4",
      "accountId": "AC0123456789abcdefABCDEF0123456789abcdef05",
      "brandId": "BX56XX4",
      "usecase": "2FA",
      "description": "mock campaign.",
      "sample1": "Your verification code from FreeClimb is 000000. It expires in 10 minutes.",
      "sample2": null,
      "sample3": null,
      "sample4": null,
      "sample5": null,
      "messageFlow": null,
      "helpMessage": null,
      "status": "EXPIRED",
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
      "optinKeywords": "START",
      "optoutKeywords": "STOP",
      "helpKeywords": "HELP",
      "optinMessage": "",
      "optoutMessage": "",
      "brand": {
        "optionalAttributes": {},
        "brandId": "BVCEBIJ",
        "firstName": "",
        "lastName": "",
        "displayName": "FreeClimb LLC(mock)",
        "companyName": "FreeClimb LLC",
        "phone": "+18475722071",
        "email": "bmabry@vailsys.com",
        "website": "https://www.freeclimb.com/",
        "evpVettingScore": 22
      }
    }
  ]
}'

# create an instance of SMSTenDLCPartnerCampaignsListResult from a JSON string
instance = Freeclimb::SMSTenDLCPartnerCampaignsListResult.build_from_hash(JSON.parse(json))
```

