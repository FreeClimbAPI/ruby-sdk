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
  # The OutDial command is used to call a phone number
  class OutDial < PerclCommand
    # URL to which FreeClimb sends an HTTP POST request.
    attr_accessor :action_url

    # URL to which FreeClimb makes an HTTP POST request informing the result of the OutDial.
    attr_accessor :call_connect_url

    # he caller ID to show to the called party when FreeClimb calls. This can be one of the following: The To or From number provided in the first Webhook to your webserver. Any phone number you have purchased from FreeClimb.
    attr_accessor :calling_number

    # E.164 representation of the phone number to Call.
    attr_accessor :destination

    attr_accessor :if_machine

    # When the `ifMachine` flag is set to `redirect`, this attribute specifies a URL to which FreeClimb makes a POST request when an answering machine or a fax machine is detected. This URL is required if the `ifMachine` flag is set to `redirect`. Otherwise, it should not be included.
    attr_accessor :if_machine_url

    # DTMF tones to play to the outdialed Call. This is typically used to dial a number and then dial an extension.
    attr_accessor :send_digits

    # When the outdialed Call leg terminates, FreeClimb sends a `callStatus` Webhook to the `statusCallbackUrl`. This is a notification only; any PerCL command returned is ignored.
    attr_accessor :status_callback_url

    # Maximum time in seconds the `OutDial` command waits for the called party to answer the Call. When a timeout occurs, FreeClimb invokes the `callConnectUrl` Webhook to report that the out-dialed Call has ended with a status of `noAnswer`.
    attr_accessor :timeout

    # Parameter `privacyMode` will not log the `text` as required by PCI compliance.
    attr_accessor :privacy_mode

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        action_url: :actionUrl,
        call_connect_url: :callConnectUrl,
        calling_number: :callingNumber,
        destination: :destination,
        if_machine: :ifMachine,
        if_machine_url: :ifMachineUrl,
        send_digits: :sendDigits,
        status_callback_url: :statusCallbackUrl,
        timeout: :timeout,
        privacy_mode: :privacyMode
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        action_url: :String,
        call_connect_url: :String,
        calling_number: :String,
        destination: :String,
        if_machine: :IfMachine,
        if_machine_url: :String,
        send_digits: :String,
        status_callback_url: :String,
        timeout: :Integer,
        privacy_mode: :Boolean
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
        :PerclCommand
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::OutDial` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::OutDial`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super

      if attributes.key?(:action_url)
        self.action_url = attributes[:action_url]
      end

      if attributes.key?(:call_connect_url)
        self.call_connect_url = attributes[:call_connect_url]
      end

      if attributes.key?(:calling_number)
        self.calling_number = attributes[:calling_number]
      end

      if attributes.key?(:destination)
        self.destination = attributes[:destination]
      end

      if attributes.key?(:if_machine)
        self.if_machine = attributes[:if_machine]
      end

      if attributes.key?(:if_machine_url)
        self.if_machine_url = attributes[:if_machine_url]
      end

      if attributes.key?(:send_digits)
        self.send_digits = attributes[:send_digits]
      end

      if attributes.key?(:status_callback_url)
        self.status_callback_url = attributes[:status_callback_url]
      end

      if attributes.key?(:timeout)
        self.timeout = attributes[:timeout]
      end

      if attributes.key?(:privacy_mode)
        self.privacy_mode = attributes[:privacy_mode]
      end
      self.command = "OutDial"
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @action_url.nil?
        invalid_properties.push('invalid value for "action_url", action_url cannot be nil.')
      end

      if @call_connect_url.nil?
        invalid_properties.push('invalid value for "call_connect_url", call_connect_url cannot be nil.')
      end

      if @calling_number.nil?
        invalid_properties.push('invalid value for "calling_number", calling_number cannot be nil.')
      end

      if @destination.nil?
        invalid_properties.push('invalid value for "destination", destination cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if @action_url.nil?
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
        action_url == other.action_url &&
        call_connect_url == other.call_connect_url &&
        calling_number == other.calling_number &&
        destination == other.destination &&
        if_machine == other.if_machine &&
        if_machine_url == other.if_machine_url &&
        send_digits == other.send_digits &&
        status_callback_url == other.status_callback_url &&
        timeout == other.timeout &&
        privacy_mode == other.privacy_mode && super
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [action_url, call_connect_url, calling_number, destination, if_machine, if_machine_url, send_digits, status_callback_url, timeout, privacy_mode].hash
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
      super
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
      hash = super
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
