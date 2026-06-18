# Freeclimb::AccountRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Description for this account. | [optional] |
| **label** | **String** | Group to which this account belongs. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "alias": "My Account",
  "label": "My Label"
}'

# create an instance of AccountRequest from a JSON string
instance = Freeclimb::AccountRequest.build_from_hash(JSON.parse(json))
```

