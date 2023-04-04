module Freeclimb
    class RequestVerifier
        class << self
            @@DEFAULT_TOLERANCE = 5 * 60 * 1000
            
            def verify_request_signature(request_body, request_header, signing_secret, tolerance=DEFAULT_TOLERANCE)
                request_verifier_object = Freeclimb::RequestVerifier.new()
                request_verifier_object.instance_eval{ check_request_body(request_body) }
                request_verifier_object.instance_eval{ check_request_header(request_header) }
                request_verifier_object.instance_eval{ check_signing_secret(signing_secret) }
                request_verifier_object.instance_eval{ check_tolerance(tolerance) }
                info = Freeclimb::SignatureInformation.new(request_header)
                request_verifier_object.instance_eval{ verify_tolerance(info, tolerance) }
                request_verifier_object.instance_eval{ verify_signature(info, request_body, signing_secret)}
            end
        end

        private

        def check_request_body(request_body)
            if request_body == "" || request_body == nil
                raise 'Request Body cannot be empty or null'
            end
        end

        def check_request_header(request_header)
            if request_header == "" || request_header == nil
                raise 'Error with request header, Request header is empty'
            elsif !(request_header.include? "t")
                raise 'Error with request header, timestamp is not present'
            elsif !(request_header.include? "v1")
                raise 'Error with request header, signatures are not present'
            end
        end

        def check_signing_secret(signing_secret)
            if signing_secret == "" || signing_secret == nil
                raise 'Signing secret cannot be empty or null'
            end
        end

        def check_tolerance(tolerance)
            if tolerance <= 0 || !(tolerance.is_a? Integer)
                raise 'Tolerance value must be a positive integer'
            end
        end

        def verify_tolerance(info, tolerance)
            currentTime = info.get_current_unix_time()
            if !info.is_request_time_valid(tolerance)
                raise "Request time exceeded tolerance threshold. Request: " + info.request_timestamp.to_s + ", CurrentTime: " + currentTime.to_s + ", tolerance: " + tolerance.to_s
            end
        end

        def verify_signature(info, request_body, signing_secret)
            if !info.is_signature_safe(request_body, signing_secret)
                raise "Unverified signature request, If this request was unexpected, it may be from a bad actor. Please proceed with caution. If the request was exepected, please check any typos or issues with the signingSecret"
            end
        end
    end
end