# Freeclimb::ReplaceBlobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | **Object** |  |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "blob": {
    "firstName": "John",
    "lastName": "Doe"
  }
}'

# create an instance of ReplaceBlobRequest from a JSON string
instance = Freeclimb::ReplaceBlobRequest.build_from_hash(JSON.parse(json))
```

