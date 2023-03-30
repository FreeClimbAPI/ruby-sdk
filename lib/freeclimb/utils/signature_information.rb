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
                header = signature.try(:split, "=").at(0)
                value = signature.try(:split, "=").at(1)
                if header == "t"
                    @requestTimestamp = value.to_i
                elsif header == "v1"
                    @signatures.append(value)
                end 
            }
        end

        def isRequestTimeValid(tolerance)
            currentTime = self.getCurrentUnixTime()
            timeCalculation = @requestTimestamp + tolerance
            return (timeCalculation) < currentTime
        end

        def isSignatureSafe(requestBody, signingSecret)
            hashValue = self.computeHash(requestBody, signingSecret)
            return @signatures.include? hashValue
        end

        def computeHash(requestBody, signingSecret)
            data = @requestTimestamp.to_s + "." + requestBody
            return OpenSSL::HMAC.hexdigest('sha256', signingSecret, data)
        end

        def getCurrentUnixTime()
            return DateTime.now.strftime('%s').to_i
        end
    end
end