# Freeclimb::MutableResourceModel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "uri": "string",
  "dateCreated": "string",
  "dateUpdated": "string",
  "revision": 0
}'

# create an instance of MutableResourceModel from a JSON string
instance = Freeclimb::MutableResourceModel.build_from_hash(JSON.parse(json))
```

