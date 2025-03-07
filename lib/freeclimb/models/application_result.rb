# #FreeClimb API
#
# FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.
#
# The version of the OpenAPI document: 1.0.0
# Contact: support@freeclimb.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.9.0
#

require "date"
require "time"

module Freeclimb
  class ApplicationResult
    # The URI for this resource, relative to /apiserver.
    attr_accessor :uri

    # The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT).
    attr_accessor :date_created

    # The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT).
    attr_accessor :date_updated

    # Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated.
    attr_accessor :revision

    # ID of the account that owns this phone number.
    attr_accessor :account_id

    # ID of the Application that FreeClimb should contact if a Call or SMS arrives for this phone number or a Call from this number is placed. An incoming phone number is not useful until associated with an applicationId.
    attr_accessor :application_id

    # Description for this phone number. Typically the conventionally-formatted version of the phone number.
    attr_accessor :_alias

    # The URL FreeClimb will request when a phone number assigned to this Application receives a Call. Used for inbound calls only.
    attr_accessor :voice_url

    # The URL that FreeClimb will request if it times out waiting for a response from the voiceUrl. Used for inbound calls only.
    attr_accessor :voice_fallback_url

    # The URL to which FreeClimb will make a POST request informing the result of the outbound Call request. The status property of the request message specifies if the Call was connected or not.
    attr_accessor :call_connect_url

    # A URL to which FreeClimb will make a POST request when the Call ends to notify this app.
    attr_accessor :status_callback_url

    # The URL FreeClimb will request when a phone number assigned to this Application receives an incoming SMS message. Used for inbound SMS only.
    attr_accessor :sms_url

    # The URL that FreeClimb will request if it times out waiting for a response from the smsUrl. Used for inbound SMS only.
    attr_accessor :sms_fallback_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        uri: :uri,
        date_created: :dateCreated,
        date_updated: :dateUpdated,
        revision: :revision,
        account_id: :accountId,
        application_id: :applicationId,
        _alias: :alias,
        voice_url: :voiceUrl,
        voice_fallback_url: :voiceFallbackUrl,
        call_connect_url: :callConnectUrl,
        status_callback_url: :statusCallbackUrl,
        sms_url: :smsUrl,
        sms_fallback_url: :smsFallbackUrl
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        uri: :String,
        date_created: :String,
        date_updated: :String,
        revision: :Integer,
        account_id: :String,
        application_id: :String,
        _alias: :String,
        voice_url: :String,
        voice_fallback_url: :String,
        call_connect_url: :String,
        status_callback_url: :String,
        sms_url: :String,
        sms_fallback_url: :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :account_id,
        :application_id,
        :_alias,
        :voice_url,
        :voice_fallback_url,
        :call_connect_url,
        :status_callback_url,
        :sms_url,
        :sms_fallback_url
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
        :MutableResourceModel
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::ApplicationResult` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::ApplicationResult`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:uri)
        self.uri = attributes[:uri]
      end

      if attributes.key?(:date_created)
        self.date_created = attributes[:date_created]
      end

      if attributes.key?(:date_updated)
        self.date_updated = attributes[:date_updated]
      end

      if attributes.key?(:revision)
        self.revision = attributes[:revision]
      end

      if attributes.key?(:account_id)
        self.account_id = attributes[:account_id]
      end

      if attributes.key?(:application_id)
        self.application_id = attributes[:application_id]
      end

      if attributes.key?(:_alias)
        self._alias = attributes[:_alias]
      end

      if attributes.key?(:voice_url)
        self.voice_url = attributes[:voice_url]
      end

      if attributes.key?(:voice_fallback_url)
        self.voice_fallback_url = attributes[:voice_fallback_url]
      end

      if attributes.key?(:call_connect_url)
        self.call_connect_url = attributes[:call_connect_url]
      end

      if attributes.key?(:status_callback_url)
        self.status_callback_url = attributes[:status_callback_url]
      end

      if attributes.key?(:sms_url)
        self.sms_url = attributes[:sms_url]
      end

      if attributes.key?(:sms_fallback_url)
        self.sms_fallback_url = attributes[:sms_fallback_url]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      []
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if @uri.nil?
        false
      else
        list_invalid_properties.length == 0
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        uri == other.uri &&
        date_created == other.date_created &&
        date_updated == other.date_updated &&
        revision == other.revision &&
        account_id == other.account_id &&
        application_id == other.application_id &&
        _alias == other._alias &&
        voice_url == other.voice_url &&
        voice_fallback_url == other.voice_fallback_url &&
        call_connect_url == other.call_connect_url &&
        status_callback_url == other.status_callback_url &&
        sms_url == other.sms_url &&
        sms_fallback_url == other.sms_fallback_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [uri, date_created, date_updated, revision, account_id, application_id, _alias, voice_url, voice_fallback_url, call_connect_url, status_callback_url, sms_url, sms_fallback_url].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send(:"#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send(:"#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send(:"#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Freeclimb.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
