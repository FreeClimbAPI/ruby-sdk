# Freeclimb::AccountResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
| **account_id** | **String** | String that uniquely identifies this account resource. | [optional] |
| **api_key** | **String** | The API key assigned to this account. This key must be kept a secret by the customer. | [optional] |
| **_alias** | **String** | A description for this account. | [optional] |
| **label** | **String** | A string that identifies a category or group to which the account belongs. | [optional] |
| **type** | [**AccountType**](AccountType.md) |  | [optional] |
| **status** | [**AccountStatus**](AccountStatus.md) |  | [optional] |
| **subresource_uris** | **Object** | The list of subresources for this account. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "uri": "string",
  "dateCreated": "string",
  "dateUpdated": "string",
  "revision": 0,
  "accountId": "string",
  "apiKey": "string",
  "alias": "string",
  "label": "string",
  "type": "trial",
  "status": "closed"
}'

# create an instance of AccountResult from a JSON string
instance = Freeclimb::AccountResult.build_from_hash(JSON.parse(json))
```

