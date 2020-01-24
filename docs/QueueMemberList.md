# OpenapiClient::QueueMemberList

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
**queue_members** | [**Array&lt;QueueMember&gt;**](QueueMember.md) |  | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::QueueMemberList.new(total: null,
                                 start: null,
                                 _end: null,
                                 page: null,
                                 num_pages: null,
                                 page_size: null,
                                 next_page_uri: null,
                                 queue_members: null)
```


