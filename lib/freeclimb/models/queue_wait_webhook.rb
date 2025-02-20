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
  # A queued Call is requesting instructions to execute during the wait in the Queue and the corresponding waitUrl is being invoked. A PerCL response is expected. The following are the only PerCL commands supported in the PerCL script response to a request to the waitUrl: Play,Say,Pause,GetDigits,Dequeue,Hangup
  class QueueWaitWebhook < Webhook
    def self.deserialize(payload)
      return nil if payload.nil? || payload.empty?
      data = JSON.parse("[#{payload}]")[0]
      inverted_attributes = attribute_map.invert
      hash = acceptable_attributes.uniq.map { |k| [inverted_attributes[k], data[k.to_s]] }.to_h
      QueueWaitWebhook.new(hash)
    end
    # Context or reason why this request is being made. Will be queueWait - A queued call is requesting instructions to execute during the wait in the queue and the corresponding waitUrl is being invoked.
    attr_accessor :request_type

    # Account ID associated with your account.
    attr_accessor :account_id

    # Unique identifier for this Call, generated by FreeClimb
    attr_accessor :call_id

    # Phone number of the party that initiated the Call (in E.164 format).
    attr_accessor :from

    # Phone number provisioned to the customer and to which this Call is directed (in E.164 format).
    attr_accessor :to

    attr_accessor :call_status

    attr_accessor :direction

    # This is only populated if request pertains to a conference. Otherwise, it is set to null.
    attr_accessor :conference_id

    # This is only populated if the request pertains to a queue. Otherwise, it is set to null.
    attr_accessor :queue_id

    # Current queue position of the enqueued Call.
    attr_accessor :queue_position

    # Time (in seconds) the Call spent in the Queue. This is only available if the Call was actually enqueued.
    attr_accessor :queue_time

    # Current number of enqueued Calls in this Queue.
    attr_accessor :current_queue_size

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
        call_id: :callId,
        from: :from,
        to: :to,
        call_status: :callStatus,
        direction: :direction,
        conference_id: :conferenceId,
        queue_id: :queueId,
        queue_position: :queuePosition,
        queue_time: :queueTime,
        current_queue_size: :currentQueueSize
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
        call_id: :String,
        from: :String,
        to: :String,
        call_status: :CallStatus,
        direction: :CallDirection,
        conference_id: :String,
        queue_id: :String,
        queue_position: :String,
        queue_time: :Integer,
        current_queue_size: :Integer
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :call_status,
        :direction,
        :conference_id,
        :queue_id
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::QueueWaitWebhook` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::QueueWaitWebhook`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:call_id)
        self.call_id = attributes[:call_id]
      end

      if attributes.key?(:from)
        self.from = attributes[:from]
      end

      if attributes.key?(:to)
        self.to = attributes[:to]
      end

      if attributes.key?(:call_status)
        self.call_status = attributes[:call_status]
      end

      if attributes.key?(:direction)
        self.direction = attributes[:direction]
      end

      if attributes.key?(:conference_id)
        self.conference_id = attributes[:conference_id]
      end

      if attributes.key?(:queue_id)
        self.queue_id = attributes[:queue_id]
      end

      if attributes.key?(:queue_position)
        self.queue_position = attributes[:queue_position]
      end

      if attributes.key?(:queue_time)
        self.queue_time = attributes[:queue_time]
      end

      if attributes.key?(:current_queue_size)
        self.current_queue_size = attributes[:current_queue_size]
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
        call_id == other.call_id &&
        from == other.from &&
        to == other.to &&
        call_status == other.call_status &&
        direction == other.direction &&
        conference_id == other.conference_id &&
        queue_id == other.queue_id &&
        queue_position == other.queue_position &&
        queue_time == other.queue_time &&
        current_queue_size == other.current_queue_size && super
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [request_type, account_id, call_id, from, to, call_status, direction, conference_id, queue_id, queue_position, queue_time, current_queue_size].hash
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
