# Freeclimb::TFNCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this participant. |  |
| **campaign_id** | **String** | TFNCampaignId |  |
| **use_case** | **String** |  |  |
| **registration_status** | [**SMSTollFreeCampaignRegistrationStatus**](SMSTollFreeCampaignRegistrationStatus.md) |  |  |
| **date_created** | **String** |  |  |
| **date_updated** | **String** |  |  |
| **date_created_iso** | **String** |  |  |
| **date_updated_iso** | **String** |  |  |
| **revision** | **Integer** |  |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "accountId": "string",
  "campaignId": "cmptfn_387ec3f6e03b340553f35f29c8f118cdf3eae08a",
  "useCase": "string",
  "registrationStatus": "UNREGISTERED",
  "dateCreated": "string",
  "dateUpdated": "string",
  "dateCreatedISO": "string",
  "dateUpdatedISO": "string",
  "revision": 0
}'

# create an instance of TFNCampaign from a JSON string
instance = Freeclimb::TFNCampaign.build_from_hash(JSON.parse(json))
```

