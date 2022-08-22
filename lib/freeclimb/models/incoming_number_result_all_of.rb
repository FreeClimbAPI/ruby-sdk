=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'date'
require 'time'

module Freeclimb
  class IncomingNumberResultAllOf
    attr_accessor :capabilities

    # The campaign ID generated by the campaign registry
    attr_accessor :campaign_id

    # String that uniquely identifies this phone number resource.
    attr_accessor :phone_number_id

    # ID of the account that owns this phone number.
    attr_accessor :account_id

    # ID of the Application that FreeClimb should contact if a Call or SMS arrives for this phone number or a Call from this number is placed. An incoming phone number is not useful until associated with an applicationId.
    attr_accessor :application_id

    # Phone number in E.164 format.
    attr_accessor :phone_number

    # Description for this phone number. Typically the conventionally-formatted version of the phone number.
    attr_accessor :_alias

    # State or province of this phone number.
    attr_accessor :region

    # Country of this phone number.
    attr_accessor :country

    # Indicates whether the phone number can handle Calls. Typically set to true for all numbers.
    attr_accessor :voice_enabled

    # Indication of whether the phone number can handle sending and receiving SMS messages. Typically set to true for all numbers.
    attr_accessor :sms_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'capabilities' => :'capabilities',
        :'campaign_id' => :'campaignId',
        :'phone_number_id' => :'phoneNumberId',
        :'account_id' => :'accountId',
        :'application_id' => :'applicationId',
        :'phone_number' => :'phoneNumber',
        :'_alias' => :'alias',
        :'region' => :'region',
        :'country' => :'country',
        :'voice_enabled' => :'voiceEnabled',
        :'sms_enabled' => :'smsEnabled'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'capabilities' => :'Capabilities',
        :'campaign_id' => :'String',
        :'phone_number_id' => :'String',
        :'account_id' => :'String',
        :'application_id' => :'String',
        :'phone_number' => :'String',
        :'_alias' => :'String',
        :'region' => :'String',
        :'country' => :'String',
        :'voice_enabled' => :'Boolean',
        :'sms_enabled' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'campaign_id',
        :'phone_number_id',
        :'account_id',
        :'application_id',
        :'phone_number',
        :'_alias',
        :'region',
        :'country',
        :'voice_enabled',
        :'sms_enabled'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::IncomingNumberResultAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::IncomingNumberResultAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'capabilities')
        self.capabilities = attributes[:'capabilities']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'phone_number_id')
        self.phone_number_id = attributes[:'phone_number_id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'application_id')
        self.application_id = attributes[:'application_id']
      end

      if attributes.key?(:'phone_number')
        self.phone_number = attributes[:'phone_number']
      end

      if attributes.key?(:'_alias')
        self._alias = attributes[:'_alias']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end

      if attributes.key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.key?(:'voice_enabled')
        self.voice_enabled = attributes[:'voice_enabled']
      end

      if attributes.key?(:'sms_enabled')
        self.sms_enabled = attributes[:'sms_enabled']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          capabilities == o.capabilities &&
          campaign_id == o.campaign_id &&
          phone_number_id == o.phone_number_id &&
          account_id == o.account_id &&
          application_id == o.application_id &&
          phone_number == o.phone_number &&
          _alias == o._alias &&
          region == o.region &&
          country == o.country &&
          voice_enabled == o.voice_enabled &&
          sms_enabled == o.sms_enabled
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [capabilities, campaign_id, phone_number_id, account_id, application_id, phone_number, _alias, region, country, voice_enabled, sms_enabled].hash
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
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
        value = self.send(attr)
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
