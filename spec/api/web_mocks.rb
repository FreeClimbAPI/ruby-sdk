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

  CALL_RESULT = '{
    "uri":"/Accounts/{account_id}/Calls/CA721d58cbeb725da23534375643ff8113f3050241",
    "revision":1,
    "dateCreated":"Thu, 13 Oct 2019 17:51:56 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 19:51:50 GMT",
    "callId":"CA721d58cbeb725da23534375643ff8113f3050241",
    "parentCallId":"CA78d058cbeb725da23534375643ff8113f30593ef",
    "accountId":"{account_id}",
    "from":"+12093231234",
    "to":"+12098900611",
    "phoneNumberId":"PN234f58cbeb725da23534375643ff8113f30500ab",
    "status":"queued",
    "startTime":"Thu, 13 Oct 2019 17:51:56 GMT",
    "connectTime":"Thu, 13 Oct 2019 17:51:59 GMT",
    "endTime":"Thu, 13 Oct 2019 17:59:54 GMT",
    "duration":478,
    "connectDuration": 475,
    "direction":"outboundDial",
    "answeredBy":"human",
    "subresourceUris":{
      "logs":"/Accounts/{account_id}/Calls/CA721d58cbeb725da23534375643ff8113f3050241/Logs",
      "recordings":"/Accounts/{account_id}/Calls/CA721d58cbeb725da23534375643ff8113f3050241/Recordings"
    }
  }'
  CONFERENCE_PARTICIPANT_RESULT = '{
    "accountId":"{account_id}",
    "conferenceId":"CFd0cc3ab95118aaa597039793a1692313fa9c4936",
    "callId":"CAef219e4e9152a4b31888620cf391adcae5b6f18c",
    "uri":"/Accounts/{account_id}/Conferences/CFd0cc3ab95118aaa597039793a1692313fa9c4936/Participants/CAef219e4e9152a4b31888620cf391adcae5b6f18c",
    "dateCreated":"Thu, 13 Oct 2019 18:23:31 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 18:23:31 GMT",
    "revision":1,
    "talk":true,
    "listen":true,
    "startConfOnEnter":true
  }'

  ACCOUNT_RESULT = '{
    "uri":"/Accounts/{accountId}",
    "revision":1,
    "dateCreated":"Thu, 13 Oct 2019 16:59:34 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 16:59:34 GMT",
    "accountId":"{account_id}",
    "apiKey":"428e487a035b837ac2f47f2236ec553550ed2628",
    "alias":"boostrap account",
    "label":"customer service",
    "type":"trial",
    "status":"active",
    "subresourceUris":
    {
      "applications":"/Accounts/{account_id}/Applications",
      "calls":"/Accounts/{account_id}/Calls",
      "availablePhoneNumbers":"/Accounts/{account_id}/AvailablePhoneNumbers",
      "conferences":"/Accounts/{account_id}/Conferences",
      "incomingPhoneNumbers":"/Accounts/{account_id}/IncomingPhoneNumbers",
      "logs":"/Accounts/{account_id}/Logs",
      "recordings":"/Accounts/{account_id}/Recordings",
      "queues":"/Accounts/{account_id}/Queues"
    }
  }'

  MESSAGE_RESULT = '{
    "uri":"/Accounts/{account_id}/Messages/SM721d58cbeb725da23534375643ff8113f3050241",
    "revision":1,
    "dateCreated":"Thu, 13 Oct 2019 17:51:56 GMT",
    "dateUpdated":"Thu, 13 Oct 2019 19:51:50 GMT",
    "messageId":"SM721d58cbeb725da23534375643ff8113f3050241",
    "accountId":"{account_id}",
    "from":"+12093231234",
    "to":"+12098900611",
    "text":"SMS message sent during a phone call.",
    "direction":"outbound",
    "notificationUrl": "http://myapp.com/message-status-notification",
    "status": "sent"
  }'

  QUEUE_LIST_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "queues":[
      {
        "uri":"/Accounts/{account_id}/Queues/QUeda6c00620d92ec306fa8780aa824352fcd1367a",
        "dateCreated":"Thu, 13 Oct 2019 18:31:48 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 18:31:48 GMT",
        "revision":1,
        "accountId":"{account_id}",
        "queueId":"QUeda6c00620d92ec306fa8780aa824352fcd1367a",
        "alias":"the number",
        "maxSize":100,
        "currentSize":0,
        "averageWaitTime":0,
        "subresourceUris":{
          "members":"/Accounts/{account_id}/Queues/QUeda6c00620d92ec306fa8780aa824352fcd1367a/Members"
        }
      }
    ]
  }'

  APPLICATION_LIST_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "applications":[
      {
        "uri":"/Accounts/{account_id}/Applications/APec9ba3847dd3c0327abb2fa5f385a1a6195e2870",
        "revision":1,
        "dateCreated":"Thu, 13 Oct 2019 17:49:21 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 17:49:21 GMT",
        "applicationId":"APec9ba3847dd3c0327abb2fa5f385a1a6195e2870",
        "accountId":"{account_id}",
        "alias":"SampleApplication",
        "voiceUrl":"http://myapp.com/inbound-call",
        "voiceFallbackUrl":"http://myapp.com/inbound-call-fallback",
        "callConnectUrl":"http://myapp.com/outbound-connect",
        "statusCallbackUrl":"http://myapp.com/call-status",
        "smsUrl":"http://myapp.com/inbound-sms",
        "smsFallbackUrl":"http://myapp.com/inbound-sms-fallback"
      }
    ]
  }'

  AVAILABLE_NUMBER_LIST = '{
    "total":35,
    "start":0,
    "end":19,
    "page":0,
    "numPages":2,
    "pageSize":100,
    "nextPageUri":"/AvailablePhoneNumbers?cursor=82402c5eefa67219b554e22c63cfb1b92ade8744",
    "availablePhoneNumbers":[
      {
        "phoneNumber":"+14135513872",
        "voiceEnabled":true,
        "smsEnabled":true,
        "alias":"(413) 551-3872",
        "region":"MA",
        "country":"US"
      },
      {
        "phoneNumber":"+19135513873",
        "voiceEnabled":true,
        "smsEnabled":true,
        "alias":"(913) 551-3873",
        "region":"KS",
        "country":"US"
      }
    ]
  }'

  RECORDING_LIST_RESULT = '{
    "total":1,
    "start":1,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "recordings":[
      {
        "uri":"/Accounts/{account_id}/Recordings/RE2849364d11dacd7c1e64afb3fd8c8f707a2080b4",
        "dateCreated":"Thu, 13 Oct 2019 18:49:11 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 18:49:11 GMT",
        "revision":1,
        "recordingId":"RE2849364d11dacd7c1e64afb3fd8c8f707a2080b4",
        "accountId":"{account_id}",
        "callId":"CA600933ba07a208317820ddabe8aa0c33e4cbd675",
        "durationSec":3
      }
    ]
  }'

  CALL_LIST_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "calls":[
      {
        "uri":"/Accounts/{account_id}/Calls/CA771fa1c54cdac17a8c1f0a66cdd1d5dae11b98a1",
        "revision":1,
        "dateCreated":"Thu, 13 Oct 2019 17:56:15 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 17:56:15 GMT",
        "callId":"CA771fa1c54cdac17a8c1f0a66cdd1d5dae11b98a1",
        "parentCallId":null,
        "accountId":"{account_id}",
        "from":"+12098231234",
        "to":"+12098900611",
        "phoneNumberId":"PNfffda1c54cdac17a8c1f0a66cdd1d5dae11b123d",
        "status":"queued",
        "startTime":"Thu, 24 Oct 2019 12:21:15 GMT",
        "connectTime":"Thu, 24 Oct 2019 12:21:18 GMT",
        "endTime":"Thu, 24 Oct 2019 12:32:18 GMT",
        "duration":663,
        "connectDuration":660,
        "direction":"outboundAPI",
        "answeredBy":"human",
        "subresourceUris":{
          "logs":"/Accounts/{account_id}/Calls/CA771fa1c54cdac17a8c1f0a66cdd1d5dae11b98a1/Logs",
          "recordings":"/Accounts/{account_id}/Calls/CA771fa1c54cdac17a8c1f0a66cdd1d5dae11b98a1/Recordings"
        }
      }
    ]
  }'

  CONFERNECE_LIST_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "conferences":[
      {
        "uri":"/Accounts/{account_id}/Conferences/CFf85f0cb5b546b737c9b807f037b008c8ab621b6e",
        "revision":1,
        "dateCreated":"Thu, 13 Oct 2019 18:19:39 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 18:19:39 GMT",
        "conferenceId":"CFf85f0cb5b546b737c9b807f037b008c8ab621b6e",
        "accountId":"{account_id}",
        "alias":"the number",
        "playBeep":"always",
        "record":false,
        "status":"empty",
        "waitUrl":"http://myapp/waitaudio",
        "statusCallbackUrl":"http://myserver/confstatuscallback",
        "subresourceUris":{
          "participants":"/Accounts/{account_id}/Conferences/CFf85f0cb5b546b737c9b807f037b008c8ab621b6e/Participants",
          "recordings":"/Accounts/{account_id}/Conferences/CFf85f0cb5b546b737c9b807f037b008c8ab621b6e/Recordings"
        }
      }
    ]
  }'

  INCOMING_PHONE_NUMBER_LIST_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "incomingPhoneNumbers":[
      {
        "uri":"/Accounts/{accountId}/IncomingPhoneNumbers/PN280479a655d90ab71b24d8258ee07210aff8f7b3",
        "dateCreated":"Thu, 13 Oct 2019 17:44:22 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 17:44:23 GMT",
        "revision":1,
        "phoneNumberId":"PN280479a655d90ab71b24d8258ee07210aff8f7b3",
        "accountId":"{account_id}",
        "applicationId":"APfc31da0abae9482a9da39751ea4ef69ebde32dfe",
        "phoneNumber":"+14195533872",
        "alias":"(419) 553-3872",
        "region":"OH",
        "country":"US",
        "voiceEnabled":true,
        "smsEnabled":true
      }
    ]
  }'

  QUEUE_MEMBER_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "queueMembers":[
      {
        "uri":"/Accounts/{account_id}/Queues/QUeda341f1fba015aa029a3342f23a3ae0c45e302b/Members/CAb933917ae0d3547bd65da77a4aa50e0329850401",
        "callId":"CAb933917ae0d3547bd65da77a4aa50e0329850401",
        "waitTime":0,
        "position":1,
        "dateEnqueued":"Thu, 13 Oct 2019 18:28:58 GMT"
      }
    ]
  }'

  PARTICIPANT_LIST_RESULT = '{
    "total":1,
    "start":1,
    "end":1,
    "page":1,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "participants":[
      {
        "accountId":"{account_id}",
        "conferenceId":"CFd0cc3ab95118aaa597039793a1692313fa9c4936",
        "callId":"CAef219e4e9152a4b31888620cf391adcae5b6f18c",
        "uri":"/Accounts/{account_id}/Conferences/CFd0cc3ab95118aaa597039793a1692313fa9c4936/Participants/CAef219e4e9152a4b31888620cf391adcae5b6f18c",
        "dateCreated":"Thu, 13 Oct 2019 18:23:31 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 18:23:31 GMT",
        "revision":1,
        "talk":true,
        "listen":true,
        "startConfOnEnter":true
      }
    ]
  }'

  MESSAGE_LIST_RESULT = '{
    "total":1,
    "start":0,
    "end":0,
    "page":0,
    "numPages":1,
    "pageSize":100,
    "nextPageUri":null,
    "messages":[
      {
        "uri":"/Accounts/{account_id}/Messages/SM771fa1c54cdac17a8c1f0a66cdd1d5dae11b98a1",
        "revision":1,
        "dateCreated":"Thu, 13 Oct 2019 17:56:15 GMT",
        "dateUpdated":"Thu, 13 Oct 2019 17:56:15 GMT",
        "messageId":"SM771fa1c54cdac17a8c1f0a66cdd1d5dae11b98a1",
        "accountId":"{account_id}",
        "from":"+12098231234",
        "to":"+12098900611",
        "text":"Outbound SMS message",
        "direction":"outbound",
        "notificationUrl": "http://myapp.com/message-status-notification",
        "status": "sent"
      }
    ]
  }'

end