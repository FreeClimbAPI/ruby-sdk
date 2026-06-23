# Freeclimb::SMSTollFreeCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this toll-free campaign |  |
| **campaign_id** | **String** | Alphanumeric identifier used by the platform to identify this toll-free campaign |  |
| **use_case** | **String** |  |  |
| **registration_status** | [**SMSTollFreeCampaignRegistrationStatus**](SMSTollFreeCampaignRegistrationStatus.md) |  |  |
| **date_created** | **String** |  |  |
| **date_updated** | **String** |  |  |
| **revision** | **Integer** |  |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "accountId": "string",
  "campaignId": "string",
  "useCase": "string",
  "registrationStatus": "UNREGISTERED",
  "dateCreated": "string",
  "dateUpdated": "string",
  "revision": 0
}'

# create an instance of SMSTollFreeCampaign from a JSON string
instance = Freeclimb::SMSTollFreeCampaign.build_from_hash(JSON.parse(json))
```

