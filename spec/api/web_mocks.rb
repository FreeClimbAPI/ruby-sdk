require 'spec_helper'


module ResponseMocks
  INCOMING_PHONE_NUMBER = '
  {
    "uri":"/Accounts/{accountId}/IncomingPhoneNumbers/PN3bf967f7e197abed0a8b4f163f0ee62688881364",
    "dateCreated":"Thu, 13 Oct 2019 17:16:05 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 17:16:10 GMT",
    "revision":1,
    "phoneNumberId":"PN3bf967f7e197abed0a8b4f163f0ee62688881364",
    "accountId":"{account_id}",
    "applicationId":"APfc31da0abae9482a9da39751ea4ef69ebde32dfe",
    "phoneNumber":"+14135513872",
    "alias":"(413) 551-3872",
    "region":"MA",
    "country":"US",
    "voiceEnabled":true,
    "smsEnabled":true
  }'

  CONFERENCE_RESULT = '
  {
    "uri":"/Accounts/{account_id}/Conferences/CF63e537ae01efa3bb10934b0d7fdb4d5057617a3c",
    "revision":1,
    "dateCreated":"Thu, 13 Oct 2019 18:04:24 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 18:04:24 GMT",
    "conferenceId":"CF63e537ae01efa3bb10934b0d7fdb4d5057617a3c",
    "accountId":"{account_id}",
    "alias":"test",
    "playBeep":"always",
    "record":false,
    "status":"empty",
    "waitUrl":"http://myapp/waitaudio",
    "statusCallbackUrl":"http://myserver/confstatuscallback",
    "subresourceUris":{
      "participants":"/Accounts/{account_id}/Conferences/CF63e537ae01efa3bb10934b0d7fdb4d5057617a3c/Participants",
      "recordings":"/Accounts/{account_id}/Conferences/CF63e537ae01efa3bb10934b0d7fdb4d5057617a3c/Recordings"
    }
  }'

  QUEUE_RESULT = '{
    "uri":"/Accounts/{account_id}/Queues/QUc82cf641d98e785b8e65a894e4563a899e52f000",
    "dateCreated":"Thu, 13 Oct 2019 18:28:01 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 18:28:01 GMT",
    "revision":1,
    "accountId":"{account_id}",
    "queueId":"QUc82cf641d98e785b8e65a894e4563a899e52f000",
    "alias":"the queue",
    "maxSize":200,
    "currentSize":1,
    "averageWaitTime":0,
    "subresourceUris":{
      "members":"/Accounts/{account_id}/Queues/QUc82cf641d98e785b8e65a894e4563a899e52f000/Members"
    }
  }'

  APPLICATION_RESULT = '{
    "uri":"/Accounts/{account_id}/Applications/APfc31da0abae9482a9da39751ea4ef69ebde32dfe",
    "revision":1,
    "dateCreated":"Thu, 13 Oct 2019 17:46:28 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 17:46:28 GMT",
    "applicationId":"APfc31da0abae9482a9da39751ea4ef69ebde32dfe",
    "accountId":"{account_id}",
    "alias":"SampleApplication",
    "voiceUrl":"http://myapp.com/inbound-call",
    "voiceFallbackUrl":"http://myapp.com/inbound-call-fallback",
    "callConnectUrl":"http://myapp.com/outbound-connect",
    "statusCallbackUrl":"http://myapp.com/call-status",
    "smsUrl":"http://myapp.com/inbound-sms",
    "smsFallbackUrl":"http://myapp.com/inbound-sms-fallback"
  }'
  
  QUEUE_MEMBER_RESULT = '{
    "uri":"/Accounts/{account_id}/Queues/QUe12f9737b02c2348d5a793074b34b3b57a2ecf20/Members/CA4969498ffd3b811acb8ab7f7d6d2cd5ab40f5140",
    "callId":"CA4969498ffd3b811acb8ab7f7d6d2cd5ab40f5140",
    "waitTime":15,
    "position":1,
    "dateEnqueued":"Thu, 13 Oct 2019 18:38:30 GMT"
  }'

  LOG_LIST_RESULT = '{
    "end":5,
    "logs":[
      {
        "timestamp":5474083373405444832,
        "level":"warning",
        "requestId":"RQadd26da69146693985ddba1d7a9e70c1834b530d",
        "accountId":"{account_id}",
        "callId":"CA9867c2f910a120eccf9beb991ac2370dff862b22",
        "message":"Fix the fixes",
        "metadata":{
          "confId":"CF386ee6698071e9d171165bdf66195ed0a8b52f48",
          "memberId":"QMc5dbb50754b86e3fc0ad7aee9ed0f7c155971dcd",
          "test":"test value"
        }
      },
      {
        "timestamp":5407855525769595085,
        "level":"error",
        "requestId":"RQ5c1842013a4dc46dc9139b22235f2792e43cbb58",
        "accountId":"{account_id}",
        "callId":"CA491dbace4532efdb225b54912b0e680edff39588",
        "message":"They\'re inside the interface, use the back-end PHP alarm to transmit their monitor!",
        "metadata":{
          "confId":"CF8047f0704dd15f9f70f6e5ab15d0666d62a82e2d",
          "memberId":"QMcfa1b5c47b092e769fb88e46f760214b16163a29",
          "test":"test value"
        }
      },
      {
        "timestamp":1475591665000002,
        "level":"error",
        "requestId":"RQ1234567890123456789012345678901234567892",
        "accountId":"{account_id}",
        "callId":null,
        "message":"test message 3",
        "metadata":{
          "test":"test value"
        }
      }
    ],
    "nextPageUri":null,
    "numPages":1,
    "page":0,
    "pageSize":100,
    "start":0,
    "total":5
  }'
end