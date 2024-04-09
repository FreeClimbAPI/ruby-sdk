require 'spec_helper'
$time_stamp = 1679944186
$FIXNUM_MAX = (2**(0.size * 8 -2) -1)
describe 'SignatureInformation' do
    before do
        @request_header = "t=#{$time_stamp},v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
        @signature_information_object = Freeclimb::SignatureInformation.new(@request_header)
    end
    describe '#is_request_time_valid' do
        context 'request time is within tolerance threshold' do
            it 'returns true' do
                @time_calculation = DateTime.now.strftime('%s').to_i 
                @request_header = "t=#{@time_calculation},v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                @signature_information_object = Freeclimb::SignatureInformation.new(@request_header)
                tolerance = 5 * 60
                expect(@signature_information_object.is_request_time_valid(tolerance)).to be true
            end
        end
        context 'request time is not within tolerance threshold' do
            it 'returns false since it does not match condition of request time being within tolerance threshold' do
                @time_calculation = DateTime.now.strftime('%s').to_i - (600 * 60) 
                @request_header = "t=#{@time_calculation},v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                @signature_information_object = Freeclimb::SignatureInformation.new(@request_header)
                tolerance = 500 * 60
                expect(@signature_information_object.is_request_time_valid(tolerance)).to be false
            end
        end
    end
    describe '#is_signature_safe' do
        context 'signingSecret exists in signature array' do
            it 'returns true' do
                request_body = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                signing_secret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                expect(@signature_information_object.is_signature_safe(request_body, signing_secret)).to be true
            end
        end
        context 'signingSecret does not exists in signature array' do
            it 'returns false since it does not match condition of signingSecret being within signature array' do
                request_body = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                signing_secret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7794"
                expect(@signature_information_object.is_signature_safe(request_body, signing_secret)).to be false
            end
        end
    end
end
