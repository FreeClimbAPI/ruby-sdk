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

instance = Freeclimb::TFNCampaign.new(
  account_id: null,
  campaign_id: cmptfn_387ec3f6e03b340553f35f29c8f118cdf3eae08a,
  use_case: null,
  registration_status: null,
  date_created: null,
  date_updated: null,
  date_created_iso: null,
  date_updated_iso: null,
  revision: null
)
```

