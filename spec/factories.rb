FactoryBot.define do
    factory :buy_incoming_number_request, class: Freeclimb::BuyIncomingNumberRequest do
        phone_number { "1234567890" }
        _alias { "TEST_ALIAS" }
        application_id { "TEST_APPLICATION_ID" }
    end
    factory :create_conference_request, class: Freeclimb::CreateConferenceRequest do
        _alias { "TEST_ALIAS" }
        play_beep { "always" }
        record { true }
        wait_url { "TEST_WAIT_URL" }
        status_callback_url { "TEST_STATUS_CALLBACK_URL" }
    end
    factory :queue_request, class: Freeclimb::QueueRequest do
        _alias { "TEST_ALIAS" }
        max_size { 100 }
    end
    factory :application_request, class: Freeclimb::ApplicationRequest do
        _alias { "TEST_ALIAS "}
        voice_url { "TEST_VOICE_URL" }
        voice_fallback_url { "TEST_VOICE_FALLBACK_URL" }
        call_connect_url { "TEST_CALL_CONNECT_URL" }
        status_callback_url { "TEST_STATUS_CALLBACK_URL" }
        sms_url { "TEST_SMS_URL" }
        sms_fallback_url { "TEST_SMS_FALLBACK_URL" }
    end
    factory :filter_logs_request, class: Freeclimb::FilterLogsRequest do
        pql { "TEST_PQL" }
    end
    factory :capabilities, class: Freeclimb::Capabilities do
        voice { true }
        sms { true }
        toll_free { false }
        ten_dlc { false }
        short_code { false }
    end
    factory :make_call_request, class: Freeclimb::MakeCallRequest do
        from { "TEST_FROM" }
        to { "TEST_TO" }
        application_id { "TEST_APPLICATION_ID" }
        send_digits { "TEST_SEND_DIGITS" }
        if_machine { "TEST_IF_MACHINE" }
        if_machine_url { "TEST_IF_MACHINE_URL" }
        timeout { 120 }
        parent_call_id { "TEST_PARENT_CALL_ID" }
        privacy_mode { false }
        call_connect_url { "TEST_CALL_CONNECT_URL" }
    end
    factory :message_request, class: Freeclimb::MessageRequest do
        uri { "TEST_URI" }
        date_created { "TEST_DATE_CREATED" }
        date_updated { "TEST_DATE_UPDATED" }
        revision { "TEST_REVISION" }
        from { "TEST_FROM" }
        to { "TEST_TO" }
        text { "TEST_TEXT" }
        notification_url { "TEST_NOTIFICATION_URL" }
        account_id { "TEST_ACCOUNT_ID" }
    end
    factory :update_conference_participant_request, class: Freeclimb::UpdateConferenceParticipantRequest do
        talk { true }
        listen { true }
    end
    factory :account_request, class: Freeclimb::AccountRequest do
        _alias { "TEST_ALIAS" }
        label { "TEST_LABEL" }
    end
    factory :incoming_number_request, class: Freeclimb::IncomingNumberRequest do
        application_id { "TEST_APPLICATION_ID" }
        _alias { "TEST_ALIAS" }
    end
    factory :update_conference_request, class: Freeclimb::UpdateConferenceRequest do
        _alias { "TEST_ALIAS" }
        play_beep { "always" }
        status { "empty" }
    end
    factory :update_call_request, class: Freeclimb::UpdateCallRequest do
        status { "completed" }
    end
end
