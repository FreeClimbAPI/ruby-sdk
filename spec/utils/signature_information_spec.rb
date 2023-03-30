require 'spec_helper'

describe 'SignatureInformation' do
    before do
        @request_header = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
        @signature_information_object = Freeclimb::SignatureInformation.new(@request_header)
    end
    describe '#isRequestTimeValid' do
        context 'request time is within tolerance threshold' do
            it 'returns true' do
                tolerance = 5 * 60
                expect(@signature_information_object.isRequestTimeValid(tolerance)).to be true
            end
            it 'returns false' do
                tolerance = 5 * 60 * 1000
                expect(@signature_information_object.isRequestTimeValid(tolerance)).to be false
            end
        end
    end
    describe '#isSignatureSafe' do
        context 'signingSecret exists in signature array' do
            it 'returns true' do
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                expect(@signature_information_object.isSignatureSafe(requestBody, signingSecret)).to be true
            end
            it 'returns false' do
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7794"
                expect(@signature_information_object.isSignatureSafe(requestBody, signingSecret)).to be false
            end
        end
    end
end
