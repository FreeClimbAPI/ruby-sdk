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
  class CallResultAllOf
    # String that uniquely identifies this Call resource.
    attr_accessor :call_id

    # ID of the Call that created this leg (child Call).
    attr_accessor :parent_call_id

    # ID of the account that owns this Call.
    attr_accessor :account_id

    # Phone number that initiated this Call.
    attr_accessor :from

    # Phone number that received this Call.
    attr_accessor :to

    # If the Call was inbound, this is the ID of the IncomingPhoneNumber that received the Call (DNIS). If the Call was outbound, this is the ID of the phone number from which the Call was placed (ANI).
    attr_accessor :phone_number_id

    attr_accessor :call_status

    # Start time of the Call (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call has not yet been dialed.
    attr_accessor :start_time

    # Time the Call was answered (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call has not yet been dialed.
    attr_accessor :connect_time

    # End time of the Call (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call did not complete successfully.
    attr_accessor :end_time

    # Total length of the Call in seconds. Measures time between startTime and endTime. This value is empty for busy, failed, unanswered or ongoing Calls.
    attr_accessor :duration

    # Length of time that the Call was connected in seconds. Measures time between connectTime and endTime. This value is empty for busy, failed, unanswered or ongoing Calls.
    attr_accessor :connect_duration

    attr_accessor :direction

    attr_accessor :answered_by

    # The list of subresources for this Call. These include things like logs and recordings associated with the Call.
    attr_accessor :subresource_uris

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'call_id' => :'callId',
        :'parent_call_id' => :'parentCallId',
        :'account_id' => :'accountId',
        :'from' => :'from',
        :'to' => :'to',
        :'phone_number_id' => :'phoneNumberId',
        :'call_status' => :'callStatus',
        :'start_time' => :'startTime',
        :'connect_time' => :'connectTime',
        :'end_time' => :'endTime',
        :'duration' => :'duration',
        :'connect_duration' => :'connectDuration',
        :'direction' => :'direction',
        :'answered_by' => :'answeredBy',
        :'subresource_uris' => :'subresourceUris'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'call_id' => :'String',
        :'parent_call_id' => :'String',
        :'account_id' => :'String',
        :'from' => :'String',
        :'to' => :'String',
        :'phone_number_id' => :'String',
        :'call_status' => :'CallStatus',
        :'start_time' => :'String',
        :'connect_time' => :'String',
        :'end_time' => :'String',
        :'duration' => :'Integer',
        :'connect_duration' => :'Integer',
        :'direction' => :'CallDirection',
        :'answered_by' => :'AnsweredBy',
        :'subresource_uris' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'call_id',
        :'parent_call_id',
        :'account_id',
        :'from',
        :'to',
        :'phone_number_id',
        :'call_status',
        :'start_time',
        :'connect_time',
        :'end_time',
        :'duration',
        :'connect_duration',
        :'direction',
        :'answered_by',
        :'subresource_uris'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::CallResultAllOf` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::CallResultAllOf`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'call_id')
        self.call_id = attributes[:'call_id']
      end

      if attributes.key?(:'parent_call_id')
        self.parent_call_id = attributes[:'parent_call_id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.key?(:'to')
        self.to = attributes[:'to']
      end

      if attributes.key?(:'phone_number_id')
        self.phone_number_id = attributes[:'phone_number_id']
      end

      if attributes.key?(:'call_status')
        self.call_status = attributes[:'call_status']
      end

      if attributes.key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end

      if attributes.key?(:'connect_time')
        self.connect_time = attributes[:'connect_time']
      end

      if attributes.key?(:'end_time')
        self.end_time = attributes[:'end_time']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'connect_duration')
        self.connect_duration = attributes[:'connect_duration']
      end

      if attributes.key?(:'direction')
        self.direction = attributes[:'direction']
      end

      if attributes.key?(:'answered_by')
        self.answered_by = attributes[:'answered_by']
      end

      if attributes.key?(:'subresource_uris')
        self.subresource_uris = attributes[:'subresource_uris']
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
      
      if @call_id.nil?
        false
      else
        list_invalid_properties.length() == 0
      end

    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          call_id == o.call_id &&
          parent_call_id == o.parent_call_id &&
          account_id == o.account_id &&
          from == o.from &&
          to == o.to &&
          phone_number_id == o.phone_number_id &&
          call_status == o.call_status &&
          start_time == o.start_time &&
          connect_time == o.connect_time &&
          end_time == o.end_time &&
          duration == o.duration &&
          connect_duration == o.connect_duration &&
          direction == o.direction &&
          answered_by == o.answered_by &&
          subresource_uris == o.subresource_uris
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [call_id, parent_call_id, account_id, from, to, phone_number_id, call_status, start_time, connect_time, end_time, duration, connect_duration, direction, answered_by, subresource_uris].hash
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
