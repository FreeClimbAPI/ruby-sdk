require 'spec_helper'

describe 'RequestVerifier' do
    before do
        @request_verifier_object = Freeclimb::RequestVerifier.new()
    end

    describe '#checkRequestBody' do
        context 'Request Body is empty' do
            it 'throws "Request Body cannot be empty or null"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = 5 * 60
                requestBody = ""
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Request Body cannot be empty or null")
            end
        end
        context 'Request Body is nil' do
            it 'throws "Request Body cannot be empty or null"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = 5 * 60
                requestBody = nil
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Request Body cannot be empty or null")
            end
        end
    end

    describe '#checkRequestHeader' do
        context 'signatures are not present' do
            it 'throws "Error with request header, signatures are not present"' do
                requestHeader = "t=1679944186,"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = 5 * 60
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Error with request header, signatures are not present")
            end
        end
        context 'timestamp is not present' do
            it 'throws "Error with request header, timestamp is not present"' do
                requestHeader = "v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = 5 * 60
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Error with request header, timestamp is not present")
            end
        end
        context 'Request header is empty' do
            it 'throws "Error with request header, Request header is empty"' do
                requestHeader = ""
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = 5 * 60
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Error with request header, Request header is empty")
            end
        end
    end

    describe '#checkSigningSecret' do
        context 'Signing secret is empty' do
            it 'throws "Signing secret cannot be empty or null"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = ""
                tolerance = 5 * 60
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Signing secret cannot be empty or null")
            end
        end
        context 'Signing secret is nil' do
            it 'throws "Signing secret cannot be empty or null"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = nil
                tolerance = 5 * 60
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Signing secret cannot be empty or null")
            end
        end
    end

    describe '#checkTolerance' do
        context 'Tolerance value is a negative value' do
            it 'throws "Tolerance value must be a positive integer"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = -5
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Tolerance value must be a positive integer")
            end
        end
        context 'Tolerance value is 0' do
            it 'throws "Tolerance value must be a positive integer"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = 0
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Tolerance value must be a positive integer")
            end
        end
        context 'Tolerance value is greater than allowed limit' do
            it 'throws "Tolerance value must be a positive integer"' do
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = (2**(0.size * 8 -2) -1)
                requestBody = "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Tolerance value must be a positive integer")
            end
        end
    end

    describe '#verifyTolerance' do
        context 'Request plus tolerance is not less than the current datetime' do
            it 'throws "Request time exceeded tolerance threshold. Request: 1900871395, CurrentTime: currentTimeValue, tolerance, toleranceValue"' do
                currentTime = DateTime.now.strftime('%s').to_i
                requestHeader = "t=1900871395,v1=1d798c86e977ff734dec3a8b8d67fe8621dcc1df46ef4212e0bfe2e122b01bfd,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = (5 * 60)
                requestBody =  "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Request time exceeded tolerance threshold. Request: 1900871395" + ", CurrentTime: " + currentTime.to_s + ", tolerance: " + tolerance.to_s)
            end
        end
    end

    describe '#verifySignature' do
        context 'Signature request is unverified, signing secret does not exist in signatures, potential typo' do
            it 'throws "Unverified signature request, If this request was unexpected, it may be from a bad actor. Please proceed with caution. If the request was exepected, please check any typos or issues with the signingSecret"' do
                currentTime = DateTime.now.strftime('%s').to_i
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7794"
                tolerance = (5 * 60)
                requestBody =  "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.to raise_error("Unverified signature request, If this request was unexpected, it may be from a bad actor. Please proceed with caution. If the request was exepected, please check any typos or issues with the signingSecret")
            end
        end
    end

    describe '#verifyRequestSignature' do
        context 'Request is valid' do
            it 'No errors are thrown' do
                currentTime = DateTime.now.strftime('%s').to_i
                requestHeader = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
                signingSecret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
                tolerance = (5 * 60)
                requestBody =  "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
                expect { @request_verifier_object.verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance) }.not_to raise_error
            end
        end
    end
    
end