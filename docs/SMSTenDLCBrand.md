# Freeclimb::SMSTenDLCBrand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this Queue. | [optional] |
| **entity_type** | [**SMSTenDLCBrandEntityType**](SMSTenDLCBrandEntityType.md) |  |  |
| **csp_id** | **String** | Unique identifier assigned to the csp by the registry. | [optional][readonly] |
| **brand_id** | **String** | Unique identifier assigned to the brand by the registry. | [optional][readonly] |
| **first_name** | **String** | First or given name.  | [optional] |
| **last_name** | **String** | Last or Surname. | [optional] |
| **display_name** | **String** | Display or marketing name of the brand. |  |
| **company_name** | **String** | (Required for Non-profit/private/public) Legal company name. | [optional] |
| **ein** | **String** | (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits in U.S. | [optional] |
| **ein_issuing_country** | **String** | ISO2 2 characters country code. Example: US - United States | [optional] |
| **phone** | **String** | Valid phone number in e.164 international format. |  |
| **street** | **String** | Street number and name. | [optional] |
| **city** | **String** | City name | [optional] |
| **state** | **String** | State. Must be 2 letters code for United States. | [optional] |
| **postal_code** | **String** | Postal codes. Use 5 digit zipcode for United States | [optional] |
| **country** | **String** | ISO2 2 characters country code. Example: US - United States |  |
| **email** | **String** | Valid email address of brand support contact. |  |
| **stock_symbol** | **String** | (Required for public company) stock symbol. | [optional] |
| **stock_exchange** | [**SMSTenDLCBrandStockExchange**](SMSTenDLCBrandStockExchange.md) |  | [optional] |
| **ip_address** | **String** | IP address of the browser requesting to create brand identity. | [optional] |
| **website** | **String** | Brand website URL. | [optional] |
| **brand_relationship** | [**SMSTenDLCBrandRelationship**](SMSTenDLCBrandRelationship.md) |  |  |
| **vertical** | **String** | Vertical or industry segment of the brand. |  |
| **alt_business_id** | **String** | Alternate business identifier such as DUNS, LEI, or GIIN | [optional] |
| **alt_business_id_type** | [**SMSTenDLCBrandAltBusinessIdType**](SMSTenDLCBrandAltBusinessIdType.md) |  | [optional] |
| **universal_ein** | **String** | Universal EIN of Brand, Read Only. | [optional][readonly] |
| **reference_id** | **String** | Caller supplied brand reference ID. If supplied, the value must be unique across all submitted brands. Can be used to prevent duplicate brand registrations. | [optional] |
| **optional_attributes** | **Hash&lt;String, Object&gt;** | Optional brand attributes. Please refer to GET /enum/optionalAttributeNames for dictionary of optional attribute names. | [optional] |
| **mock** | **Boolean** | Test brand. |  |
| **identity_status** | [**SMSTenDLCBrandIdentityStatus**](SMSTenDLCBrandIdentityStatus.md) |  |  |
| **create_date** | **Time** | Unix timestamp when brand was created. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SMSTenDLCBrand.new(
  account_id: null,
  entity_type: null,
  csp_id: null,
  brand_id: null,
  first_name: John,
  last_name: Doe,
  display_name: ABC Mobile,
  company_name: ABC Inc.,
  ein: 111111111,
  ein_issuing_country: US,
  phone: +12024567890,
  street: 123 6th Ave,
  city: New York,
  state: NY,
  postal_code: 10001,
  country: US,
  email: null,
  stock_symbol: ABC,
  stock_exchange: null,
  ip_address: null,
  website: http://www.abcmobile.com,
  brand_relationship: null,
  vertical: null,
  alt_business_id: null,
  alt_business_id_type: null,
  universal_ein: null,
  reference_id: null,
  optional_attributes: null,
  mock: null,
  identity_status: null,
  create_date: null
)
```

