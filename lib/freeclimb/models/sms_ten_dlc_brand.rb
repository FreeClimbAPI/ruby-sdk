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
  # A brand is a business identity behind the campaign.
  class SMSTenDLCBrand
    # ID of the account that created this Queue.
    attr_accessor :account_id

    attr_accessor :entity_type

    # Unique identifier assigned to the csp by the registry.
    attr_accessor :csp_id

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

    # (Required for Non-profit) Government assigned corporate tax ID. EIN is 9-digits in U.S.
    attr_accessor :ein

    # ISO2 2 characters country code. Example: US - United States
    attr_accessor :ein_issuing_country

    # Valid phone number in e.164 international format.
    attr_accessor :phone

    # Street number and name.
    attr_accessor :street

    # City name
    attr_accessor :city

    # State. Must be 2 letters code for United States.
    attr_accessor :state

    # Postal codes. Use 5 digit zipcode for United States
    attr_accessor :postal_code

    # ISO2 2 characters country code. Example: US - United States
    attr_accessor :country

    # Valid email address of brand support contact.
    attr_accessor :email

    # (Required for public company) stock symbol.
    attr_accessor :stock_symbol

    attr_accessor :stock_exchange

    # IP address of the browser requesting to create brand identity.
    attr_accessor :ip_address

    # Brand website URL.
    attr_accessor :website

    attr_accessor :brand_relationship

    # Vertical or industry segment of the brand.
    attr_accessor :vertical

    # Alternate business identifier such as DUNS, LEI, or GIIN
    attr_accessor :alt_business_id

    attr_accessor :alt_business_id_type

    # Universal EIN of Brand, Read Only.
    attr_accessor :universal_ein

    # Caller supplied brand reference ID. If supplied, the value must be unique across all submitted brands. Can be used to prevent duplicate brand registrations.
    attr_accessor :reference_id

    # Optional brand attributes. Please refer to GET /enum/optionalAttributeNames for dictionary of optional attribute names.
    attr_accessor :optional_attributes

    # Test brand.
    attr_accessor :mock

    attr_accessor :identity_status

    # Unix timestamp when brand was created.
    attr_accessor :create_date

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
        account_id: :accountId,
        entity_type: :entityType,
        csp_id: :cspId,
        brand_id: :brandId,
        first_name: :firstName,
        last_name: :lastName,
        display_name: :displayName,
        company_name: :companyName,
        ein: :ein,
        ein_issuing_country: :einIssuingCountry,
        phone: :phone,
        street: :street,
        city: :city,
        state: :state,
        postal_code: :postalCode,
        country: :country,
        email: :email,
        stock_symbol: :stockSymbol,
        stock_exchange: :stockExchange,
        ip_address: :ipAddress,
        website: :website,
        brand_relationship: :brandRelationship,
        vertical: :vertical,
        alt_business_id: :altBusinessId,
        alt_business_id_type: :altBusinessIdType,
        universal_ein: :universalEin,
        reference_id: :referenceId,
        optional_attributes: :optionalAttributes,
        mock: :mock,
        identity_status: :identityStatus,
        create_date: :createDate
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
        entity_type: :SMSTenDLCBrandEntityType,
        csp_id: :String,
        brand_id: :String,
        first_name: :String,
        last_name: :String,
        display_name: :String,
        company_name: :String,
        ein: :String,
        ein_issuing_country: :String,
        phone: :String,
        street: :String,
        city: :String,
        state: :String,
        postal_code: :String,
        country: :String,
        email: :String,
        stock_symbol: :String,
        stock_exchange: :SMSTenDLCBrandStockExchange,
        ip_address: :String,
        website: :String,
        brand_relationship: :SMSTenDLCBrandRelationship,
        vertical: :String,
        alt_business_id: :String,
        alt_business_id_type: :SMSTenDLCBrandAltBusinessIdType,
        universal_ein: :String,
        reference_id: :String,
        optional_attributes: :"Hash<String, Object>",
        mock: :Boolean,
        identity_status: :SMSTenDLCBrandIdentityStatus,
        create_date: :Time
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::SMSTenDLCBrand` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if !self.class.attribute_map.key?(k.to_sym)
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::SMSTenDLCBrand`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:account_id)
        self.account_id = attributes[:account_id]
      end

      if attributes.key?(:entity_type)
        self.entity_type = attributes[:entity_type]
      end

      if attributes.key?(:csp_id)
        self.csp_id = attributes[:csp_id]
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

      if attributes.key?(:ein)
        self.ein = attributes[:ein]
      end

      if attributes.key?(:ein_issuing_country)
        self.ein_issuing_country = attributes[:ein_issuing_country]
      end

      if attributes.key?(:phone)
        self.phone = attributes[:phone]
      end

      if attributes.key?(:street)
        self.street = attributes[:street]
      end

      if attributes.key?(:city)
        self.city = attributes[:city]
      end

      if attributes.key?(:state)
        self.state = attributes[:state]
      end

      if attributes.key?(:postal_code)
        self.postal_code = attributes[:postal_code]
      end

      if attributes.key?(:country)
        self.country = attributes[:country]
      end

      if attributes.key?(:email)
        self.email = attributes[:email]
      end

      if attributes.key?(:stock_symbol)
        self.stock_symbol = attributes[:stock_symbol]
      end

      if attributes.key?(:stock_exchange)
        self.stock_exchange = attributes[:stock_exchange]
      end

      if attributes.key?(:ip_address)
        self.ip_address = attributes[:ip_address]
      end

      if attributes.key?(:website)
        self.website = attributes[:website]
      end

      if attributes.key?(:brand_relationship)
        self.brand_relationship = attributes[:brand_relationship]
      end

      if attributes.key?(:vertical)
        self.vertical = attributes[:vertical]
      end

      if attributes.key?(:alt_business_id)
        self.alt_business_id = attributes[:alt_business_id]
      end

      if attributes.key?(:alt_business_id_type)
        self.alt_business_id_type = attributes[:alt_business_id_type]
      end

      if attributes.key?(:universal_ein)
        self.universal_ein = attributes[:universal_ein]
      end

      if attributes.key?(:reference_id)
        self.reference_id = attributes[:reference_id]
      end

      if attributes.key?(:optional_attributes)
        if (value = attributes[:optional_attributes]).is_a?(Hash)
          self.optional_attributes = value
        end
      end

      if attributes.key?(:mock)
        self.mock = attributes[:mock]
      end

      if attributes.key?(:identity_status)
        self.identity_status = attributes[:identity_status]
      end

      if attributes.key?(:create_date)
        self.create_date = attributes[:create_date]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @entity_type.nil?
        invalid_properties.push('invalid value for "entity_type", entity_type cannot be nil.')
      end

      if !@first_name.nil? && @first_name.to_s.length > 100
        invalid_properties.push('invalid value for "first_name", the character length must be smaller than or equal to 100.')
      end

      if !@last_name.nil? && @last_name.to_s.length > 100
        invalid_properties.push('invalid value for "last_name", the character length must be smaller than or equal to 100.')
      end

      if @display_name.nil?
        invalid_properties.push('invalid value for "display_name", display_name cannot be nil.')
      end

      if @display_name.to_s.length > 255
        invalid_properties.push('invalid value for "display_name", the character length must be smaller than or equal to 255.')
      end

      if !@company_name.nil? && @company_name.to_s.length > 255
        invalid_properties.push('invalid value for "company_name", the character length must be smaller than or equal to 255.')
      end

      if !@ein.nil? && @ein.to_s.length > 21
        invalid_properties.push('invalid value for "ein", the character length must be smaller than or equal to 21.')
      end

      if !@ein_issuing_country.nil? && @ein_issuing_country.to_s.length > 2
        invalid_properties.push('invalid value for "ein_issuing_country", the character length must be smaller than or equal to 2.')
      end

      if @phone.nil?
        invalid_properties.push('invalid value for "phone", phone cannot be nil.')
      end

      if @phone.to_s.length > 20
        invalid_properties.push('invalid value for "phone", the character length must be smaller than or equal to 20.')
      end

      if !@street.nil? && @street.to_s.length > 100
        invalid_properties.push('invalid value for "street", the character length must be smaller than or equal to 100.')
      end

      if !@city.nil? && @city.to_s.length > 100
        invalid_properties.push('invalid value for "city", the character length must be smaller than or equal to 100.')
      end

      if !@state.nil? && @state.to_s.length > 20
        invalid_properties.push('invalid value for "state", the character length must be smaller than or equal to 20.')
      end

      if !@postal_code.nil? && @postal_code.to_s.length > 10
        invalid_properties.push('invalid value for "postal_code", the character length must be smaller than or equal to 10.')
      end

      if @country.nil?
        invalid_properties.push('invalid value for "country", country cannot be nil.')
      end

      if @country.to_s.length > 2
        invalid_properties.push('invalid value for "country", the character length must be smaller than or equal to 2.')
      end

      if @email.nil?
        invalid_properties.push('invalid value for "email", email cannot be nil.')
      end

      if @email.to_s.length > 100
        invalid_properties.push('invalid value for "email", the character length must be smaller than or equal to 100.')
      end

      if !@stock_symbol.nil? && @stock_symbol.to_s.length > 10
        invalid_properties.push('invalid value for "stock_symbol", the character length must be smaller than or equal to 10.')
      end

      if !@ip_address.nil? && @ip_address.to_s.length > 50
        invalid_properties.push('invalid value for "ip_address", the character length must be smaller than or equal to 50.')
      end

      if !@website.nil? && @website.to_s.length > 100
        invalid_properties.push('invalid value for "website", the character length must be smaller than or equal to 100.')
      end

      if @brand_relationship.nil?
        invalid_properties.push('invalid value for "brand_relationship", brand_relationship cannot be nil.')
      end

      if @vertical.nil?
        invalid_properties.push('invalid value for "vertical", vertical cannot be nil.')
      end

      if @vertical.to_s.length > 50
        invalid_properties.push('invalid value for "vertical", the character length must be smaller than or equal to 50.')
      end

      if !@alt_business_id.nil? && @alt_business_id.to_s.length > 50
        invalid_properties.push('invalid value for "alt_business_id", the character length must be smaller than or equal to 50.')
      end

      if !@reference_id.nil? && @reference_id.to_s.length > 50
        invalid_properties.push('invalid value for "reference_id", the character length must be smaller than or equal to 50.')
      end

      if @mock.nil?
        invalid_properties.push('invalid value for "mock", mock cannot be nil.')
      end

      if @identity_status.nil?
        invalid_properties.push('invalid value for "identity_status", identity_status cannot be nil.')
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
      if display_name.nil?
        fail ArgumentError, "display_name cannot be nil"
      end

      if display_name.to_s.length > 255
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
    # @param [Object] ein Value to be assigned
    def ein=(ein)
      if !ein.nil? && ein.to_s.length > 21
        fail ArgumentError, 'invalid value for "ein", the character length must be smaller than or equal to 21.'
      end

      @ein = ein
    end

    # Custom attribute writer method with validation
    # @param [Object] ein_issuing_country Value to be assigned
    def ein_issuing_country=(ein_issuing_country)
      if !ein_issuing_country.nil? && ein_issuing_country.to_s.length > 2
        fail ArgumentError, 'invalid value for "ein_issuing_country", the character length must be smaller than or equal to 2.'
      end

      @ein_issuing_country = ein_issuing_country
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
    # @param [Object] street Value to be assigned
    def street=(street)
      if !street.nil? && street.to_s.length > 100
        fail ArgumentError, 'invalid value for "street", the character length must be smaller than or equal to 100.'
      end

      @street = street
    end

    # Custom attribute writer method with validation
    # @param [Object] city Value to be assigned
    def city=(city)
      if !city.nil? && city.to_s.length > 100
        fail ArgumentError, 'invalid value for "city", the character length must be smaller than or equal to 100.'
      end

      @city = city
    end

    # Custom attribute writer method with validation
    # @param [Object] state Value to be assigned
    def state=(state)
      if !state.nil? && state.to_s.length > 20
        fail ArgumentError, 'invalid value for "state", the character length must be smaller than or equal to 20.'
      end

      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      if !postal_code.nil? && postal_code.to_s.length > 10
        fail ArgumentError, 'invalid value for "postal_code", the character length must be smaller than or equal to 10.'
      end

      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.nil?
        fail ArgumentError, "country cannot be nil"
      end

      if country.to_s.length > 2
        fail ArgumentError, 'invalid value for "country", the character length must be smaller than or equal to 2.'
      end

      @country = country
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
    # @param [Object] stock_symbol Value to be assigned
    def stock_symbol=(stock_symbol)
      if !stock_symbol.nil? && stock_symbol.to_s.length > 10
        fail ArgumentError, 'invalid value for "stock_symbol", the character length must be smaller than or equal to 10.'
      end

      @stock_symbol = stock_symbol
    end

    # Custom attribute writer method with validation
    # @param [Object] ip_address Value to be assigned
    def ip_address=(ip_address)
      if !ip_address.nil? && ip_address.to_s.length > 50
        fail ArgumentError, 'invalid value for "ip_address", the character length must be smaller than or equal to 50.'
      end

      @ip_address = ip_address
    end

    # Custom attribute writer method with validation
    # @param [Object] website Value to be assigned
    def website=(website)
      if !website.nil? && website.to_s.length > 100
        fail ArgumentError, 'invalid value for "website", the character length must be smaller than or equal to 100.'
      end

      @website = website
    end

    # Custom attribute writer method with validation
    # @param [Object] vertical Value to be assigned
    def vertical=(vertical)
      if vertical.nil?
        fail ArgumentError, "vertical cannot be nil"
      end

      if vertical.to_s.length > 50
        fail ArgumentError, 'invalid value for "vertical", the character length must be smaller than or equal to 50.'
      end

      @vertical = vertical
    end

    # Custom attribute writer method with validation
    # @param [Object] alt_business_id Value to be assigned
    def alt_business_id=(alt_business_id)
      if !alt_business_id.nil? && alt_business_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "alt_business_id", the character length must be smaller than or equal to 50.'
      end

      @alt_business_id = alt_business_id
    end

    # Custom attribute writer method with validation
    # @param [Object] reference_id Value to be assigned
    def reference_id=(reference_id)
      if !reference_id.nil? && reference_id.to_s.length > 50
        fail ArgumentError, 'invalid value for "reference_id", the character length must be smaller than or equal to 50.'
      end

      @reference_id = reference_id
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)
      self.class == other.class &&
        account_id == other.account_id &&
        entity_type == other.entity_type &&
        csp_id == other.csp_id &&
        brand_id == other.brand_id &&
        first_name == other.first_name &&
        last_name == other.last_name &&
        display_name == other.display_name &&
        company_name == other.company_name &&
        ein == other.ein &&
        ein_issuing_country == other.ein_issuing_country &&
        phone == other.phone &&
        street == other.street &&
        city == other.city &&
        state == other.state &&
        postal_code == other.postal_code &&
        country == other.country &&
        email == other.email &&
        stock_symbol == other.stock_symbol &&
        stock_exchange == other.stock_exchange &&
        ip_address == other.ip_address &&
        website == other.website &&
        brand_relationship == other.brand_relationship &&
        vertical == other.vertical &&
        alt_business_id == other.alt_business_id &&
        alt_business_id_type == other.alt_business_id_type &&
        universal_ein == other.universal_ein &&
        reference_id == other.reference_id &&
        optional_attributes == other.optional_attributes &&
        mock == other.mock &&
        identity_status == other.identity_status &&
        create_date == other.create_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, entity_type, csp_id, brand_id, first_name, last_name, display_name, company_name, ein, ein_issuing_country, phone, street, city, state, postal_code, country, email, stock_symbol, stock_exchange, ip_address, website, brand_relationship, vertical, alt_business_id, alt_business_id_type, universal_ein, reference_id, optional_attributes, mock, identity_status, create_date].hash
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
