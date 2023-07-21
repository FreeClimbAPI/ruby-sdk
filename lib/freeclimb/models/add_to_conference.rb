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
  # The `AddToConference` command adds a Participant to a Conference. If this Participant currently is in another Conference, the Participant is first removed from that Conference. Two Call legs can be bridged together by creating a Conference and adding both Call legs to it via `AddToConference`.
  class AddToConference < PerclCommand
    # If `true`, Call control will be enabled for this Participant's Call leg.
    attr_accessor :allow_call_control

    # Defines a sequence of digits that, when entered by this caller, invokes the `callControlUrl`. Only digits plus '*', and '#' may be used.
    attr_accessor :call_control_sequence

    # URL to be invoked when this Participant enters the digit sequence defined in the `callControlSequence` attribute.
    attr_accessor :call_control_url

    # ID of the Conference to which to add the Participant (Call leg). Conference must exist or an error will result.
    attr_accessor :conference_id

    # ID of the Call that will be added to the specified Conference. The Call must be in progress or an error will result. If the Call is part of an existing Conference, it is first removed from that Conference and is then moved to the new one.
    attr_accessor :call_id

    # URL to be invoked when the Participant leaves the Conference. 
    attr_accessor :leave_conference_url

    # If `true`, the Participant joins the Conference with listen privileges. This may be modified later via the REST API or `SetListen` PerCL command.
    attr_accessor :listen

    # When the Participant enters the Conference, this URL will be invoked using an HTTP POST request with the standard request parameters.
    attr_accessor :notification_url

    # Flag that indicates whether a Conference starts upon entry of this particular Participant. This is usually set to `true` for moderators and `false` for all other Participants.
    attr_accessor :start_conf_on_enter

    # If `true`, the Participant joins the Conference with talk privileges. This may be modified later via the REST API or `SetTalk` PerCL command. 
    attr_accessor :talk

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_call_control' => :'allowCallControl',
        :'call_control_sequence' => :'callControlSequence',
        :'call_control_url' => :'callControlUrl',
        :'conference_id' => :'conferenceId',
        :'call_id' => :'callId',
        :'leave_conference_url' => :'leaveConferenceUrl',
        :'listen' => :'listen',
        :'notification_url' => :'notificationUrl',
        :'start_conf_on_enter' => :'startConfOnEnter',
        :'talk' => :'talk'
      }
    end

    # Returns all the JSON keys this model knows about, including the ones defined in its parent(s)
    def self.acceptable_attributes
      attribute_map.values.concat(superclass.acceptable_attributes)
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'allow_call_control' => :'Boolean',
        :'call_control_sequence' => :'String',
        :'call_control_url' => :'String',
        :'conference_id' => :'String',
        :'call_id' => :'String',
        :'leave_conference_url' => :'String',
        :'listen' => :'Boolean',
        :'notification_url' => :'String',
        :'start_conf_on_enter' => :'Boolean',
        :'talk' => :'Boolean'
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
      :'AddToConferenceAllOf',
      :'PerclCommand'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::AddToConference` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::AddToConference`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      # call parent's initialize
      super(attributes)

      if attributes.key?(:'allow_call_control')
        self.allow_call_control = attributes[:'allow_call_control']
      end

      if attributes.key?(:'call_control_sequence')
        self.call_control_sequence = attributes[:'call_control_sequence']
      end

      if attributes.key?(:'call_control_url')
        self.call_control_url = attributes[:'call_control_url']
      end

      if attributes.key?(:'conference_id')
        self.conference_id = attributes[:'conference_id']
      end

      if attributes.key?(:'call_id')
        self.call_id = attributes[:'call_id']
      end

      if attributes.key?(:'leave_conference_url')
        self.leave_conference_url = attributes[:'leave_conference_url']
      end

      if attributes.key?(:'listen')
        self.listen = attributes[:'listen']
      end

      if attributes.key?(:'notification_url')
        self.notification_url = attributes[:'notification_url']
      end

      if attributes.key?(:'start_conf_on_enter')
        self.start_conf_on_enter = attributes[:'start_conf_on_enter']
      end

      if attributes.key?(:'talk')
        self.talk = attributes[:'talk']
      end
      self.command = "AddToConference"
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = super
      if @conference_id.nil?
        invalid_properties.push('invalid value for "conference_id", conference_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @conference_id.nil?
      true && super
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          allow_call_control == o.allow_call_control &&
          call_control_sequence == o.call_control_sequence &&
          call_control_url == o.call_control_url &&
          conference_id == o.conference_id &&
          call_id == o.call_id &&
          leave_conference_url == o.leave_conference_url &&
          listen == o.listen &&
          notification_url == o.notification_url &&
          start_conf_on_enter == o.start_conf_on_enter &&
          talk == o.talk && super(o)
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allow_call_control, call_control_sequence, call_control_url, conference_id, call_id, leave_conference_url, listen, notification_url, start_conf_on_enter, talk].hash
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
