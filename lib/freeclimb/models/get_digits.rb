=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.9.0

=end

require 'date'
require 'time'

module Freeclimb
  # The `GetDigits` command collects DTMF inputs from the caller. It is only supported only when there is a single party on the Call. `GetDigits` is a Terminal Command — any actions following it are never executed. When the Caller is done entering the digits, FreeClimb submits that data to the provided `actionUrl` using an HTTP POST request. Your server will be required to respond to the FreeClimb Webhook with PerCL to continue handling the call.
  class GetDigits < PerclCommand
    # When the Caller has finished entering digits, FreeClimb will make an HTTP POST request to this URL. A PerCL response is expected to continue handling the Call. Make sure to keep “http://“ in the URL.
    attr_accessor :action_url

    #  Maximum time in milliseconds that FreeClimb will wait for the Caller to press any digit after the last digit entered, before making a determination that a `timeout` has occurred and moving on to make the request to the actionUrl to submit the results of the `GetDigits` command. This timeout interval begins and resets after each digit entered.
    attr_accessor :digit_timeout_ms

    # Digit that causes the input sequence to be deemed complete. This attribute defers to the `timeout` attribute – so, if a `timeout` occurs, then the command terminates regardless of the value of `finishOnKey`.
    attr_accessor :finish_on_key

    # If set to true, the FreeClimb platform starts with an empty DTMF buffer to store the digits entered by the caller. If set to false, FreeClimb will append the user inputs to the end of the existing digits buffer and will return digits from the start of the digits buffer.
    attr_accessor :flush_buffer

    # Maximum time in milliseconds that FreeClimb will wait for the Caller to press the first digit before making a determination that a `timeout` has occurred and moving on to make the request to the `actionUrl` to submit the results of the `GetDigits` command. This timeout interval begins when all nested commands have been fully executed.
    attr_accessor :initial_timeout_ms

    # Maximum number of digits expected in the input. If the terminating digit is not entered and the caller has entered the maximum number of digits allowed, the `GetDigits` command terminates regardless of the value of `finishOnKey`.
    attr_accessor :max_digits

    # Minimum number of digits expected in the input. If specified, FreeClimb will return the collected digits only if the Caller has entered at least that many digits.
    attr_accessor :min_digits

    # JSON array of PerCL commands to nest within the `GetDigits` command. The `Say`, `Play`, and `Pause` commands can be used. The nested actions are executed while FreeClimb is waiting for input from the Caller.
    attr_accessor :prompts

    # Parameter `privacyMode` will not log the `text` as required by PCI compliance.
    attr_accessor :privacy_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'action_url' => :'actionUrl',
        :'digit_timeout_ms' => :'digitTimeoutMs',
        :'finish_on_key' => :'finishOnKey',
        :'flush_buffer' => :'flushBuffer',
        :'initial_timeout_ms' => :'initialTimeoutMs',
        :'max_digits' => :'maxDigits',
        :'min_digits' => :'minDigits',
        :'prompts' => :'prompts',
        :'privacy_mode' => :'privacyMode'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'action_url' => :'String',
        :'digit_timeout_ms' => :'Integer',
        :'finish_on_key' => :'String',
        :'flush_buffer' => :'Boolean',
        :'initial_timeout_ms' => :'Integer',
        :'max_digits' => :'Integer',
        :'min_digits' => :'Integer',
        :'prompts' => :'Array<PerclCommand>',
        :'privacy_mode' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'PerclCommand'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::GetDigits` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::GetDigits`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'action_url')
        self.action_url = attributes[:'action_url']
      end

      if attributes.key?(:'digit_timeout_ms')
        self.digit_timeout_ms = attributes[:'digit_timeout_ms']
      end

      if attributes.key?(:'finish_on_key')
        self.finish_on_key = attributes[:'finish_on_key']
      end

      if attributes.key?(:'flush_buffer')
        self.flush_buffer = attributes[:'flush_buffer']
      end

      if attributes.key?(:'initial_timeout_ms')
        self.initial_timeout_ms = attributes[:'initial_timeout_ms']
      end

      if attributes.key?(:'max_digits')
        self.max_digits = attributes[:'max_digits']
      end

      if attributes.key?(:'min_digits')
        self.min_digits = attributes[:'min_digits']
      end

      if attributes.key?(:'prompts')
        if (value = attributes[:'prompts']).is_a?(Array)
          self.prompts = value
        end
      end

      if attributes.key?(:'privacy_mode')
        self.privacy_mode = attributes[:'privacy_mode']
      end
      self.command = "GetDigits"
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @action_url.nil?
        invalid_properties.push('invalid value for "action_url", action_url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      
      if @action_url.nil?
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
          action_url == o.action_url &&
          digit_timeout_ms == o.digit_timeout_ms &&
          finish_on_key == o.finish_on_key &&
          flush_buffer == o.flush_buffer &&
          initial_timeout_ms == o.initial_timeout_ms &&
          max_digits == o.max_digits &&
          min_digits == o.min_digits &&
          prompts == o.prompts &&
          privacy_mode == o.privacy_mode && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_url, digit_timeout_ms, finish_on_key, flush_buffer, initial_timeout_ms, max_digits, min_digits, prompts, privacy_mode].hash
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
      super(attributes)
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
      hash = super
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
