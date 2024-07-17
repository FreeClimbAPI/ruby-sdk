# Freeclimb::SMSTollFreeCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this toll-free campaign |  |
| **campaign_id** | **String** | Alphanumeric identifier used by the platform to identify this toll-free campaign |  |
| **use_case** | **String** |  |  |
| **registration_status** | **String** | Current toll-free campaign registration status.Possible values: UNREGISTERED,INITIATED,PENDING,DECLINED,REGISTERED. A newly created campaign defaults to INITIATED status.  |  |
| **date_created** | **String** |  |  |
| **date_updated** | **String** |  |  |
| **revision** | **Integer** |  |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SMSTollFreeCampaign.new(
  account_id: null,
  campaign_id: null,
  use_case: null,
  registration_status: null,
  date_created: null,
  date_updated: null,
  revision: null
)
```

