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
  class SMSTenDLCPartnerCampaignBrand
    # ID of the account that created this Queue.
    attr_accessor :account_id

    # Unique identifier assigned to the brand by the registry.
    attr_accessor :brand_id

    # First or given name.
    attr_accessor :first_name

    # Last or Surname.
    attr_accessor :last_name

    # Display or marketing name of the brand.
    attr_accessor :display_name

    # (Required for Non-profit/private/public) Legal company name.
    attr_accessor :company_name

    # Valid phone number in e.164 international format.
    attr_accessor :phone

    # Valid email address of brand support contact.
    attr_accessor :email

    # Brand website URL.
    attr_accessor :website

    # Optional brand attributes. Please refer to GET /enum/optionalAttributeNames for dictionary of optional attribute names.
    attr_accessor :optional_attributes

    # External vetting score.
    attr_accessor :evp_vetting_score

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        account_id: :accountId,
        brand_id: :brandId,
        first_name: :firstName,
        last_name: :lastName,
        display_name: :displayName,
        company_name: :companyName,
        phone: :phone,
        email: :email,
        website: :website,
        optional_attributes: :optionalAttributes,
        evp_vetting_score: :evpVettingScore
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        account_id: :String,
        brand_id: :String,
        first_name: :String,
        last_name: :String,
        display_name: :String,
        company_name: :String,
        phone: :String,
        email: :String,
        website: :String,
        optional_attributes: :"Hash<String, Object>",
        evp_vetting_score: :Integer
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :account_id
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if !attributes.is_a?(Hash)
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::SMSTenDLCPartnerCampaignBrand` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::SMSTenDLCPartnerCampaignBrand`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:account_id)
        self.account_id = attributes[:account_id]
      end

      if attributes.key?(:brand_id)
        self.brand_id = attributes[:brand_id]
      end

      if attributes.key?(:first_name)
        self.first_name = attributes[:first_name]
      end

      if attributes.key?(:last_name)
        self.last_name = attributes[:last_name]
      end

      if attributes.key?(:display_name)
        self.display_name = attributes[:display_name]
      end

      if attributes.key?(:company_name)
        self.company_name = attributes[:company_name]
      end

      if attributes.key?(:phone)
        self.phone = attributes[:phone]
      end

      if attributes.key?(:email)
        self.email = attributes[:email]
      end

      if attributes.key?(:website)
        self.website = attributes[:website]
      end

      if attributes.key?(:optional_attributes)
        if (value = attributes[:optional_attributes]).is_a?(Hash)
          self.optional_attributes = value
        end
      end

      if attributes.key?(:evp_vetting_score)
        self.evp_vetting_score = attributes[:evp_vetting_score]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      if !@first_name.nil? && @first_name.to_s.length > 100
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 100.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 100
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 100.')
      end

      if !@display_name.nil? && @display_name.to_s.length > 255
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 255.')
      end

      if !@company_name.nil? && @company_name.to_s.length > 255
        invalid_properties.push('invalid value for "company_name", the character length must be smaller than or equal to 255.')
      end

      if @phone.nil?
        invalid_properties.push('invalid value for "phone", phone cannot be nil.')
      end

      if @phone.to_s.length > 20
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 20.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 100
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 100.')
      end

      if !@website.nil? && @website.to_s.length > 100
        invalid_properties.push('invalid value for "website", the character length must be smaller than or equal to 100.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if @account_id.nil?
        false
      else
        list_invalid_properties.length == 0
      end
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      if !first_name.nil? && first_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "first_name", the character length must be smaller than or equal to 100.'
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      if !last_name.nil? && last_name.to_s.length > 100
        fail ArgumentError, 'invalid value for "last_name", the character length must be smaller than or equal to 100.'
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)
      if !display_name.nil? && display_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "display_name", the character length must be smaller than or equal to 255.'
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] company_name Value to be assigned
    def company_name=(company_name)
      if !company_name.nil? && company_name.to_s.length > 255
        fail ArgumentError, 'invalid value for "company_name", the character length must be smaller than or equal to 255.'
      end

      @company_name = company_name
    end

    # Custom attribute writer method with validation
    # @param [Object] phone Value to be assigned
    def phone=(phone)
      if phone.nil?
        fail ArgumentError, "phone cannot be nil"
      end

      if phone.to_s.length > 20
        fail ArgumentError, 'invalid value for "phone", the character length must be smaller than or equal to 20.'
      end

      @phone = phone
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      if email.nil?
        fail ArgumentError, "email cannot be nil"
      end

      if email.to_s.length > 100
        fail ArgumentError, 'invalid value for "email", the character length must be smaller than or equal to 100.'
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] website Value to be assigned
    def website=(website)
      if !website.nil? && website.to_s.length > 100
        fail ArgumentError, 'invalid value for "website", the character length must be smaller than or equal to 100.'
      end

      @website = website
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        account_id == other.account_id &&
        brand_id == other.brand_id &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        display_name == other.display_name &&
        company_name == other.company_name &&
        phone == other.phone &&
        email == other.email &&
        website == other.website &&
        optional_attributes == other.optional_attributes &&
        evp_vetting_score == other.evp_vetting_score
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, brand_id, first_name, last_name, display_name, company_name, phone, email, website, optional_attributes, evp_vetting_score].hash
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
