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
  # An outbound SMS has changed status and the notificationUrl from the Sms command or Send an SMS request is being invoked. A PerCL response will be ignored.
  class MessageStatusWebhook < Webhook
    def self.deserialize(payload)
      return nil if payload.nil? || payload.empty?
      data = JSON.parse("[#{payload}]")[0]
      inverted_attributes = attribute_map.invert
      hash = acceptable_attributes.uniq.map { |k| [inverted_attributes[k], data[k.to_s]] }.to_h
      MessageStatusWebhook.new(hash)
    end
    # Value will be messageStatus - An outbound SMS has changed status and the Sms command's notificationUrl is being invoked.
    attr_accessor :request_type

    # Account ID associated with your account.
    attr_accessor :account_id

    # Unique ID for this message, generated by FreeClimb.
    attr_accessor :message_id

    # Unique ID for the Call in the context of which the Sms PerCL command was issued.
    attr_accessor :call_id

    # aPhone number used to initiate the SMS message (in E.164 format).
    attr_accessor :from

    # Destination number of the SMS message (in E.164 format).
    attr_accessor :to

    # Body of the SMS message.
    attr_accessor :text

    # Value will be outbound to indicate an outgoing SMS from FreeClimb.
    attr_accessor :direction

    # ID of the application to which the destination number is assigned. May be null if the originating number is invalid in some way or is not registered to an application.
    attr_accessor :application_id

    attr_accessor :status

    # ID of the destination phone number.
    attr_accessor :phone_number_id

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
        request_type: :requestType,
        account_id: :accountId,
        message_id: :messageId,
        call_id: :callId,
        from: :from,
        to: :to,
        text: :text,
        direction: :direction,
        application_id: :applicationId,
        status: :status,
        phone_number_id: :phoneNumberId
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        request_type: :String,
        account_id: :String,
        message_id: :String,
        call_id: :String,
        from: :String,
        to: :String,
        text: :String,
        direction: :String,
        application_id: :String,
        status: :MessageStatus,
        phone_number_id: :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :status
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
        :Webhook
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::MessageStatusWebhook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::MessageStatusWebhook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super

      if attributes.key?(:request_type)
        self.request_type = attributes[:request_type]
      end

      if attributes.key?(:account_id)
        self.account_id = attributes[:account_id]
      end

      if attributes.key?(:message_id)
        self.message_id = attributes[:message_id]
      end

      if attributes.key?(:call_id)
        self.call_id = attributes[:call_id]
      end

      if attributes.key?(:from)
        self.from = attributes[:from]
      end

      if attributes.key?(:to)
        self.to = attributes[:to]
      end

      if attributes.key?(:text)
        self.text = attributes[:text]
      end

      if attributes.key?(:direction)
        self.direction = attributes[:direction]
      end

      if attributes.key?(:application_id)
        self.application_id = attributes[:application_id]
      end

      if attributes.key?(:status)
        self.status = attributes[:status]
      end

      if attributes.key?(:phone_number_id)
        self.phone_number_id = attributes[:phone_number_id]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      super
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if @request_type.nil?
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
        request_type == other.request_type &&
        account_id == other.account_id &&
        message_id == other.message_id &&
        call_id == other.call_id &&
        from == other.from &&
        to == other.to &&
        text == other.text &&
        direction == other.direction &&
        application_id == other.application_id &&
        status == other.status &&
        phone_number_id == other.phone_number_id && super
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [request_type, account_id, message_id, call_id, from, to, text, direction, application_id, status, phone_number_id].hash
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
