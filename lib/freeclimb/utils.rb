require 'json'
require 'cgi'
require 'date'
require 'openssl'

module FreeClimb
  class Utils
    def self.verify_request(requestBody, signatureHeader, signingSecret, tolerance=5*60*1000)
      signatureArr = signatureHeader.split(',')
      signatureHash = {}
      signatureArr.each { |queryStr|
        hash = CGI.parse(queryStr)
        if (signatureHash.key?(hash.keys[0])) 
          signatureHash[hash.keys[0]] = [signatureHash[hash.keys[0]]].append(hash.values[0][0])
        else
          signatureHash[hash.keys[0]] = hash.values[0][0]
        end
      }

      currentTime = DateTime.now.strftime('%s')
      signatureAge = currentTime.to_i - signatureHash["t"].to_i
      if (tolerance < signatureAge)
        raise StandardError.new "Request rejected - signature's timestamp failed against current tolerance of #{tolerance} milliseconds. Signature age: #{signatureAge} milliseconds";
      end

      data = signatureHash["t"] + "." + requestBody
      hmac = OpenSSL::HMAC.hexdigest('sha256', signingSecret, data)

      if (!signatureHash["v1"].include? hmac)
        raise StandardError.new "Unverified Request Signature - FreeClimb was unable to verify that this request originated from FreeClimb. If this request was unexpected, it may be from a bad actor. Please proceed with caution. If this request was expected, to fix this issue try checking for any typos or misspelling of your signing secret.";
      end
    end
  end
end