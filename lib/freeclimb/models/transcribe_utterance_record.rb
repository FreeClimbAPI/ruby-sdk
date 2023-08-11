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
  class TranscribeUtteranceRecord
    attr_accessor :save_recording

    attr_accessor :max_length_sec

    attr_accessor :rcrd_termination_silence_time_ms

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'save_recording' => :'saveRecording',
        :'max_length_sec' => :'maxLengthSec',
        :'rcrd_termination_silence_time_ms' => :'rcrdTerminationSilenceTimeMs'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'save_recording' => :'Boolean',
        :'max_length_sec' => :'Integer',
        :'rcrd_termination_silence_time_ms' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::TranscribeUtteranceRecord` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::TranscribeUtteranceRecord`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'save_recording')
        self.save_recording = attributes[:'save_recording']
      else
        self.save_recording = false
      end

      if attributes.key?(:'max_length_sec')
        self.max_length_sec = attributes[:'max_length_sec']
      else
        self.max_length_sec = 60
      end

      if attributes.key?(:'rcrd_termination_silence_time_ms')
        self.rcrd_termination_silence_time_ms = attributes[:'rcrd_termination_silence_time_ms']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@max_length_sec.nil? && @max_length_sec > 60
        invalid_properties.push('invalid value for "max_length_sec", must be smaller than or equal to 60.')
      end

      if !@max_length_sec.nil? && @max_length_sec < 1
        invalid_properties.push('invalid value for "max_length_sec", must be greater than or equal to 1.')
      end

      if !@rcrd_termination_silence_time_ms.nil? && @rcrd_termination_silence_time_ms > 3000
        invalid_properties.push('invalid value for "rcrd_termination_silence_time_ms", must be smaller than or equal to 3000.')
      end

      if !@rcrd_termination_silence_time_ms.nil? && @rcrd_termination_silence_time_ms <= 0
        invalid_properties.push('invalid value for "rcrd_termination_silence_time_ms", must be greater than 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@max_length_sec.nil? && @max_length_sec > 60
      return false if !@max_length_sec.nil? && @max_length_sec < 1
      return false if !@rcrd_termination_silence_time_ms.nil? && @rcrd_termination_silence_time_ms > 3000
      return false if !@rcrd_termination_silence_time_ms.nil? && @rcrd_termination_silence_time_ms <= 0
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] max_length_sec Value to be assigned
    def max_length_sec=(max_length_sec)
      if !max_length_sec.nil? && max_length_sec > 60
        fail ArgumentError, 'invalid value for "max_length_sec", must be smaller than or equal to 60.'
      end

      if !max_length_sec.nil? && max_length_sec < 1
        fail ArgumentError, 'invalid value for "max_length_sec", must be greater than or equal to 1.'
      end

      @max_length_sec = max_length_sec
    end

    # Custom attribute writer method with validation
    # @param [Object] rcrd_termination_silence_time_ms Value to be assigned
    def rcrd_termination_silence_time_ms=(rcrd_termination_silence_time_ms)
      if !rcrd_termination_silence_time_ms.nil? && rcrd_termination_silence_time_ms > 3000
        fail ArgumentError, 'invalid value for "rcrd_termination_silence_time_ms", must be smaller than or equal to 3000.'
      end

      if !rcrd_termination_silence_time_ms.nil? && rcrd_termination_silence_time_ms <= 0
        fail ArgumentError, 'invalid value for "rcrd_termination_silence_time_ms", must be greater than 0.'
      end

      @rcrd_termination_silence_time_ms = rcrd_termination_silence_time_ms
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          save_recording == o.save_recording &&
          max_length_sec == o.max_length_sec &&
          rcrd_termination_silence_time_ms == o.rcrd_termination_silence_time_ms
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [save_recording, max_length_sec, rcrd_termination_silence_time_ms].hash
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
