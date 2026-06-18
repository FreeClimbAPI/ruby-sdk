# Freeclimb::SMSTenDLCPartnerCampaignBrand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this Queue. | [optional] |
| **brand_id** | **String** | Unique identifier assigned to the brand by the registry. | [optional][readonly] |
| **first_name** | **String** | First or given name.  | [optional] |
| **last_name** | **String** | Last or Surname. | [optional] |
| **display_name** | **String** | Display or marketing name of the brand. | [optional] |
| **company_name** | **String** | (Required for Non-profit/private/public) Legal company name. | [optional] |
| **phone** | **String** | Valid phone number in e.164 international format. |  |
| **email** | **String** | Valid email address of brand support contact. |  |
| **website** | **String** | Brand website URL. | [optional] |
| **optional_attributes** | **Hash&lt;String, Object&gt;** | Optional brand attributes. Please refer to GET /enum/optionalAttributeNames for dictionary of optional attribute names. | [optional] |
| **evp_vetting_score** | **Integer** | External vetting score. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "accountId": "string",
  "brandId": "string",
  "firstName": "John",
  "lastName": "Doe",
  "displayName": "ABC Mobile",
  "companyName": "ABC Inc.",
  "phone": "+12024567890",
  "email": "string",
  "website": "http://www.abcmobile.com",
  "evpVettingScore": 0
}'

# create an instance of SMSTenDLCPartnerCampaignBrand from a JSON string
instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.build_from_hash(JSON.parse(json))
```

