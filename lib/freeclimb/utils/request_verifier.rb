module Freeclimb
    class RequestVerifier
        @@DEFAULT_TOLERANCE = 5 * 60 * 1000
        attr_accessor :info

        def verify_request_signature(requestBody, requestHeader, signingSecret, tolerance=DEFAULT_TOLERANCE)
            check_request_body(requestBody)
            check_request_header(requestHeader)
            check_signing_secret(signingSecret)
            check_tolerance(tolerance)
            @info = Freeclimb::SignatureInformation.new(requestHeader)
            verify_tolerance(@info, tolerance)
            verify_signature(@info, requestBody, signingSecret)
        end
        
        def check_request_body(requestBody)
            if requestBody == "" || requestBody == nil
                raise 'Request Body cannot be empty or null'
            end
        end

        def check_request_header(requestHeader)
            if requestHeader == "" || requestHeader == nil
                raise 'Error with request header, Request header is empty'
            elsif ! requestHeader.include? "t"
                raise 'Error with request header, timestamp is not present'
            elsif ! requestHeader.include? "v1"
                raise 'Error with request header, signatures are not present'
            end
        end

        def check_signing_secret(signingSecret)
            if signingSecret == "" || signingSecret == nil
                raise 'Signing secret cannot be empty or null'
            end
        end

        def check_tolerance(tolerance)
            if tolerance <= 0 || tolerance == Float::NAN || tolerance >= MaximumInteger::MAX_VALUE
                raise 'Tolerance value must be a positive integer'
            end
        end

        def verify_tolerance(info, tolerance)
            currentTime = info.get_current_unix_time()
            if !info.is_request_time_valid(tolerance)
                raise "Request time exceeded tolerance threshold. Request: " + info.requestTimestamp.to_s + ", CurrentTime: " + currentTime.to_s + ", tolerance: " + tolerance.to_s
            end
        end

        def verify_signature(info, requestBody, signingSecret)
            if !info.is_signature_safe(requestBody, signingSecret)
                raise "Unverified signature request, If this request was unexpected, it may be from a bad actor. Please proceed with caution. If the request was exepected, please check any typos or issues with the signingSecret"
            end
        end
    end
end