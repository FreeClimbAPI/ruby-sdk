# Freeclimb::SMSTenDLCBrandsListResult

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
| **brands** | [**Array&lt;SMSTenDLCBrand&gt;**](SMSTenDLCBrand.md) |  | [optional] |

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
  "brands": [
    {
      "mock": true,
      "optionalAttributes": {},
      "accountId": "AC0123456789abcdefABCDEF0123456789abcdef06",
      "brandId": "BVCEBIJ",
      "cspId": "SKGC6G0",
      "firstName": "",
      "lastName": "",
      "displayName": "FreeClimb LLC(mock)",
      "companyName": "FreeClimb LLC",
      "ein": "843793747",
      "einIssuingCountry": "US",
      "phone": "+18475722071",
      "street": "570 Lake Cook Rd Ste 400",
      "city": "Deerfield",
      "state": "IL",
      "postalCode": "60015",
      "country": "US",
      "email": "bmabry@vailsys.com",
      "stockSymbol": "",
      "stockExchange": "NASDAQ",
      "ipAddress": "127.0.0.1",
      "website": "https://www.freeclimb.com/",
      "vertical": "TECHNOLOGY",
      "universalEin": "US_843793747",
      "referenceId": "ACdeadbeef",
      "entityType": "PRIVATE_PROFIT",
      "brandRelationship": "SMALL_ACCOUNT",
      "identityStatus": "VERIFIED",
      "createDate": "2022-07-01T20:29:23Z"
    }
  ]
}'

# create an instance of SMSTenDLCBrandsListResult from a JSON string
instance = Freeclimb::SMSTenDLCBrandsListResult.build_from_hash(JSON.parse(json))
```

