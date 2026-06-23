# Freeclimb::TFN

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **campaign_id** | **String** | alphanumeric identifier for the TollFree campaign associated with this number |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "campaignId": "string"
}'

# create an instance of TFN from a JSON string
instance = Freeclimb::TFN.build_from_hash(JSON.parse(json))
```

