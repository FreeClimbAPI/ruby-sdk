# Freeclimb::LogList

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**total** | **Integer** | Total amount of requested resource. | [optional] 
**start** | **Integer** | Resource index at start of current page | [optional] 
**_end** | **Integer** | Resource index at end of current page | [optional] 
**page** | **Integer** | Current page | [optional] 
**num_pages** | **Integer** | Total number of pages | [optional] 
**page_size** | **Integer** | Number of items per page | [optional] 
**next_page_uri** | **String** | Uri to retrieve the next page of items | [optional] 
**logs** | [**Array&lt;LogResult&gt;**](LogResult.md) |  | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::LogList.new(total: nil,
                                 start: nil,
                                 _end: nil,
                                 page: nil,
                                 num_pages: nil,
                                 page_size: nil,
                                 next_page_uri: nil,
                                 logs: nil)
```


