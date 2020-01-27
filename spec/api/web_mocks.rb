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
  
end