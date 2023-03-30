module Freeclimb
    class RequestVerifier
        @@DEFAULT_TOLERANCE = 5 * 60 * 1000
        attr_accessor :info

        def verifyRequestSignature(requestBody, requestHeader, signingSecret, tolerance=DEFAULT_TOLERANCE)
            checkRequestBody(requestBody)
            checkRequestHeader(requestHeader)
            checkSigningSecret(signingSecret)
            checkTolerance(tolerance)
            @info = Freeclimb::SignatureInformation.new(requestHeader)
            verifyTolerance(@info, tolerance)
            verifySignature(@info, requestBody, signingSecret)
        end
        
        def checkRequestBody(requestBody)
            if requestBody == "" or requestBody == nil
                raise 'Request Body cannot be empty or null'
            end
        end

        def checkRequestHeader(requestHeader)
            if requestHeader == "" or requestHeader == nil
                raise 'Error with request header, Request header is empty'
            elsif ! requestHeader.include? "t"
                raise 'Error with request header, timestamp is not present'
            elsif ! requestHeader.include? "v1"
                raise 'Error with request header, signatures are not present'
            end
        end

        def checkSigningSecret(signingSecret)
            if signingSecret == "" or signingSecret == nil
                raise 'Signing secret cannot be empty or null'
            end
        end

        def checkTolerance(tolerance)
            fixnum = (2**(0.size * 8 -2) -1)
            if tolerance <= 0 or tolerance == Float::NAN or tolerance >= fixnum
                raise 'Tolerance value must be a positive integer'
            end
        end

        def verifyTolerance(info, tolerance)
            currentTime = info.getCurrentUnixTime()
            if !info.isRequestTimeValid(tolerance)
                raise "Request time exceeded tolerance threshold. Request: " + info.requestTimestamp.to_s + ", CurrentTime: " + currentTime.to_s + ", tolerance: " + tolerance.to_s
            end
        end

        def verifySignature(info, requestBody, signingSecret)
            if !info.isSignatureSafe(requestBody, signingSecret)
                raise "Unverified signature request, If this request was unexpected, it may be from a bad actor. Please proceed with caution. If the request was exepected, please check any typos or issues with the signingSecret"
            end
        end
    end
end