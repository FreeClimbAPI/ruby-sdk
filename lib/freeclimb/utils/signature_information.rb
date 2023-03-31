require 'date'
require 'openssl'
require 'cgi'

module Freeclimb
    class SignatureInformation
        attr_accessor :requestTimestamp
        attr_accessor :signatures

        def initialize(requestHeader)
            @requestTimestamp = 0
            @signatures = []
            signatureHeader = requestHeader.try(:split, ",")
            signatureHeader.each { |signature|
                header, value = signature.try(:split, "=")
                if header == "t"
                    @requestTimestamp = value.to_i
                elsif header == "v1"
                    @signatures.append(value)
                end 
            }
        end

        def is_request_time_valid(tolerance)
            currentTime = self.get_current_unix_time()
            timeCalculation = @requestTimestamp + tolerance
            return (timeCalculation) < currentTime
        end

        def is_signature_safe(requestBody, signingSecret)
            hashValue = self.compute_hash(requestBody, signingSecret)
            return @signatures.include? hashValue
        end

        def compute_hash(requestBody, signingSecret)
            data = @requestTimestamp.to_s + "." + requestBody
            return OpenSSL::HMAC.hexdigest('sha256', signingSecret, data)
        end

        def get_current_unix_time()
            return DateTime.now.strftime('%s').to_i
        end
    end
end