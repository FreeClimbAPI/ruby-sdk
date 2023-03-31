require 'date'
require 'openssl'
require 'cgi'

module Freeclimb
    class SignatureInformation
        attr_accessor :request_timestamp
        attr_accessor :signatures

        def initialize(request_header)
            @request_timestamp = 0
            @signatures = []
            signatureHeader = request_header.try(:split, ",")
            signatureHeader.each { |signature|
                header, value = signature.try(:split, "=")
                if header == "t"
                    @request_timestamp = value.to_i
                elsif header == "v1"
                    @signatures.append(value)
                end 
            }
        end

        def is_request_time_valid(tolerance)
            currentTime = self.get_current_unix_time()
            timeCalculation = @request_timestamp + tolerance
            return (timeCalculation) < currentTime
        end

        def is_signature_safe(request_body, signing_secret)
            hashValue = self.compute_hash(request_body, signing_secret)
            return @signatures.include? hashValue
        end

        def compute_hash(request_body, signing_secret)
            data = @request_timestamp.to_s + "." + request_body
            return OpenSSL::HMAC.hexdigest('sha256', signing_secret, data)
        end

        def get_current_unix_time()
            return DateTime.now.strftime('%s').to_i
        end
    end
end