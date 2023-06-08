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
  class SMSTenDLCCampaign
    # ID of the account that created this Queue.
    attr_accessor :account_id

    # Alphanumeric identifier assigned by the registry for a campaign. This identifier is required by the NetNumber OSR SMS enabling process of 10DLC.
    attr_accessor :campaign_id

    # Alphanumeric identifier of the CSP associated with this campaign.
    attr_accessor :csp_id

    # Alphanumeric identifier of the reseller that you want to associate with this campaign.
    attr_accessor :reseller_id

    # Current campaign status. Possible values: ACTIVE, EXPIRED. A newly created campaign defaults to ACTIVE status. 
    attr_accessor :status

    # Unix timestamp when campaign was created.
    attr_accessor :create_date

    # Campaign subscription auto-renewal status.
    attr_accessor :auto_renewal

    # Campaign recent billed date.
    attr_accessor :billed_date

    # Alphanumeric identifier of the brand associated with this campaign.
    attr_accessor :brand_id

    # Campaign usecase. Must be of defined valid types. Use `/registry/enum/usecase` operation to retrieve usecases available for given brand.
    attr_accessor :usecase

    # Campaign sub-usecases. Must be of defined valid sub-usecase types. Use `/registry/enum/usecase` operation to retrieve list of valid sub-usecases
    attr_accessor :sub_usecases

    # Summary description of this campaign.
    attr_accessor :description

    # Does message generated by the campaign include URL link in SMS?
    attr_accessor :embedded_link

    # Does message generated by the campaign include phone number in SMS?
    attr_accessor :embedded_phone

    # Does message content controlled by affiliate marketing other than the brand?
    attr_accessor :affiliate_marketing

    # Does campaign utilize pool of phone nubers?
    attr_accessor :number_pool

    # Age gated content in campaign.
    attr_accessor :age_gated

    attr_accessor :direct_lending

    # Does campaign require subscriber to opt-in before SMS is sent to subscriber?
    attr_accessor :subscriber_optin

    # Does campaign support subscriber opt-out keyword(s)?
    attr_accessor :subscriber_optout

    # Does campaign responds to help keyword(s)?
    attr_accessor :subscriber_help

    # Message sample. Some campaign tiers require 1 or more message samples.
    attr_accessor :sample1

    # Message sample. Some campaign tiers require 2 or more message samples.
    attr_accessor :sample2

    # Message sample. Some campaign tiers require 3 or more message samples.
    attr_accessor :sample3

    # Message sample. Some campaign tiers require 4 or more message samples.
    attr_accessor :sample4

    # Message sample. Some campaign tiers require 5 or more message samples.
    attr_accessor :sample5

    # Message flow description.
    attr_accessor :message_flow

    # Help message of the campaign.
    attr_accessor :help_message

    # Caller supplied campaign reference ID. If supplied, the value must be unique across all submitted campaigns. Can be used to prevent duplicate campaign registrations.
    attr_accessor :reference_id

    # Campaign created from mock brand. Mocked campaign cannot be shared with an upstream CNP.
    attr_accessor :mock

    # When the campaign would be due for its next renew/bill date.
    attr_accessor :next_renewal_or_expiration_date

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
        :'account_id' => :'accountId',
        :'campaign_id' => :'campaignId',
        :'csp_id' => :'cspId',
        :'reseller_id' => :'resellerId',
        :'status' => :'status',
        :'create_date' => :'createDate',
        :'auto_renewal' => :'autoRenewal',
        :'billed_date' => :'billedDate',
        :'brand_id' => :'brandId',
        :'usecase' => :'usecase',
        :'sub_usecases' => :'subUsecases',
        :'description' => :'description',
        :'embedded_link' => :'embeddedLink',
        :'embedded_phone' => :'embeddedPhone',
        :'affiliate_marketing' => :'affiliateMarketing',
        :'number_pool' => :'numberPool',
        :'age_gated' => :'ageGated',
        :'direct_lending' => :'directLending',
        :'subscriber_optin' => :'subscriberOptin',
        :'subscriber_optout' => :'subscriberOptout',
        :'subscriber_help' => :'subscriberHelp',
        :'sample1' => :'sample1',
        :'sample2' => :'sample2',
        :'sample3' => :'sample3',
        :'sample4' => :'sample4',
        :'sample5' => :'sample5',
        :'message_flow' => :'messageFlow',
        :'help_message' => :'helpMessage',
        :'reference_id' => :'referenceId',
        :'mock' => :'mock',
        :'next_renewal_or_expiration_date' => :'nextRenewalOrExpirationDate'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_id' => :'String',
        :'campaign_id' => :'String',
        :'csp_id' => :'String',
        :'reseller_id' => :'String',
        :'status' => :'String',
        :'create_date' => :'Time',
        :'auto_renewal' => :'Boolean',
        :'billed_date' => :'Time',
        :'brand_id' => :'String',
        :'usecase' => :'String',
        :'sub_usecases' => :'Array<String>',
        :'description' => :'String',
        :'embedded_link' => :'Boolean',
        :'embedded_phone' => :'Boolean',
        :'affiliate_marketing' => :'Boolean',
        :'number_pool' => :'Boolean',
        :'age_gated' => :'Boolean',
        :'direct_lending' => :'Boolean',
        :'subscriber_optin' => :'Boolean',
        :'subscriber_optout' => :'Boolean',
        :'subscriber_help' => :'Boolean',
        :'sample1' => :'String',
        :'sample2' => :'String',
        :'sample3' => :'String',
        :'sample4' => :'String',
        :'sample5' => :'String',
        :'message_flow' => :'String',
        :'help_message' => :'String',
        :'reference_id' => :'String',
        :'mock' => :'Boolean',
        :'next_renewal_or_expiration_date' => :'Date'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'account_id',
        :'reseller_id',
        :'billed_date',
        :'sample2',
        :'sample3',
        :'sample4',
        :'sample5',
        :'message_flow',
        :'help_message',
        :'reference_id',
        :'next_renewal_or_expiration_date'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Freeclimb::SMSTenDLCCampaign` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Freeclimb::SMSTenDLCCampaign`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'csp_id')
        self.csp_id = attributes[:'csp_id']
      end

      if attributes.key?(:'reseller_id')
        self.reseller_id = attributes[:'reseller_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'create_date')
        self.create_date = attributes[:'create_date']
      end

      if attributes.key?(:'auto_renewal')
        self.auto_renewal = attributes[:'auto_renewal']
      end

      if attributes.key?(:'billed_date')
        self.billed_date = attributes[:'billed_date']
      end

      if attributes.key?(:'brand_id')
        self.brand_id = attributes[:'brand_id']
      end

      if attributes.key?(:'usecase')
        self.usecase = attributes[:'usecase']
      end

      if attributes.key?(:'sub_usecases')
        if (value = attributes[:'sub_usecases']).is_a?(Array)
          self.sub_usecases = value
        end
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'embedded_link')
        self.embedded_link = attributes[:'embedded_link']
      else
        self.embedded_link = false
      end

      if attributes.key?(:'embedded_phone')
        self.embedded_phone = attributes[:'embedded_phone']
      else
        self.embedded_phone = false
      end

      if attributes.key?(:'affiliate_marketing')
        self.affiliate_marketing = attributes[:'affiliate_marketing']
      end

      if attributes.key?(:'number_pool')
        self.number_pool = attributes[:'number_pool']
      else
        self.number_pool = false
      end

      if attributes.key?(:'age_gated')
        self.age_gated = attributes[:'age_gated']
      end

      if attributes.key?(:'direct_lending')
        self.direct_lending = attributes[:'direct_lending']
      end

      if attributes.key?(:'subscriber_optin')
        self.subscriber_optin = attributes[:'subscriber_optin']
      else
        self.subscriber_optin = false
      end

      if attributes.key?(:'subscriber_optout')
        self.subscriber_optout = attributes[:'subscriber_optout']
      else
        self.subscriber_optout = false
      end

      if attributes.key?(:'subscriber_help')
        self.subscriber_help = attributes[:'subscriber_help']
      else
        self.subscriber_help = false
      end

      if attributes.key?(:'sample1')
        self.sample1 = attributes[:'sample1']
      end

      if attributes.key?(:'sample2')
        self.sample2 = attributes[:'sample2']
      end

      if attributes.key?(:'sample3')
        self.sample3 = attributes[:'sample3']
      end

      if attributes.key?(:'sample4')
        self.sample4 = attributes[:'sample4']
      end

      if attributes.key?(:'sample5')
        self.sample5 = attributes[:'sample5']
      end

      if attributes.key?(:'message_flow')
        self.message_flow = attributes[:'message_flow']
      end

      if attributes.key?(:'help_message')
        self.help_message = attributes[:'help_message']
      end

      if attributes.key?(:'reference_id')
        self.reference_id = attributes[:'reference_id']
      end

      if attributes.key?(:'mock')
        self.mock = attributes[:'mock']
      end

      if attributes.key?(:'next_renewal_or_expiration_date')
        self.next_renewal_or_expiration_date = attributes[:'next_renewal_or_expiration_date']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @campaign_id.nil?
        invalid_properties.push('invalid value for "campaign_id", campaign_id cannot be nil.')
      end

      if @csp_id.nil?
        invalid_properties.push('invalid value for "csp_id", csp_id cannot be nil.')
      end

      if !@reseller_id.nil? && @reseller_id.to_s.length > 8
        invalid_properties.push('invalid value for "reseller_id", the character length must be smaller than or equal to 8.')
      end

      if @brand_id.nil?
        invalid_properties.push('invalid value for "brand_id", brand_id cannot be nil.')
      end

      if @brand_id.to_s.length > 8
        invalid_properties.push('invalid value for "brand_id", the character length must be smaller than or equal to 8.')
      end

      if @usecase.nil?
        invalid_properties.push('invalid value for "usecase", usecase cannot be nil.')
      end

      if @usecase.to_s.length > 20
        invalid_properties.push('invalid value for "usecase", the character length must be smaller than or equal to 20.')
      end

      if @sub_usecases.nil?
        invalid_properties.push('invalid value for "sub_usecases", sub_usecases cannot be nil.')
      end

      if @description.nil?
        invalid_properties.push('invalid value for "description", description cannot be nil.')
      end

      if @description.to_s.length > 4096
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 4096.')
      end

      if !@sample1.nil? && @sample1.to_s.length > 1024
        invalid_properties.push('invalid value for "sample1", the character length must be smaller than or equal to 1024.')
      end

      if !@sample2.nil? && @sample2.to_s.length > 1024
        invalid_properties.push('invalid value for "sample2", the character length must be smaller than or equal to 1024.')
      end

      if !@sample3.nil? && @sample3.to_s.length > 1024
        invalid_properties.push('invalid value for "sample3", the character length must be smaller than or equal to 1024.')
      end

      if !@sample4.nil? && @sample4.to_s.length > 1024
        invalid_properties.push('invalid value for "sample4", the character length must be smaller than or equal to 1024.')
      end

      if !@sample5.nil? && @sample5.to_s.length > 1024
        invalid_properties.push('invalid value for "sample5", the character length must be smaller than or equal to 1024.')
      end

      if !@message_flow.nil? && @message_flow.to_s.length > 2048
        invalid_properties.push('invalid value for "message_flow", the character length must be smaller than or equal to 2048.')
      end

      if !@help_message.nil? && @help_message.to_s.length > 255
        invalid_properties.push('invalid value for "help_message", the character length must be smaller than or equal to 255.')
      end

      if !@reference_id.nil? && @reference_id.to_s.length > 50
        invalid_properties.push('invalid value for "reference_id", the character length must be smaller than or equal to 50.')
      end

      if @mock.nil?
        invalid_properties.push('invalid value for "mock", mock cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @campaign_id.nil?
      return false if @csp_id.nil?
      return false if !@reseller_id.nil? && @reseller_id.to_s.length > 8
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "EXPIRED"])
      return false unless status_validator.valid?(@status)
      return false if @brand_id.nil?
      return false if @brand_id.to_s.length > 8
      return false if @usecase.nil?
      return false if @usecase.to_s.length > 20
      return false if @sub_usecases.nil?
      return false if @description.nil?
      return false if @description.to_s.length > 4096
      return false if !@sample1.nil? && @sample1.to_s.length > 1024
      return false if !@sample2.nil? && @sample2.to_s.length > 1024
      return false if !@sample3.nil? && @sample3.to_s.length > 1024
      return false if !@sample4.nil? && @sample4.to_s.length > 1024
      return false if !@sample5.nil? && @sample5.to_s.length > 1024
      return false if !@message_flow.nil? && @message_flow.to_s.length > 2048
      return false if !@help_message.nil? && @help_message.to_s.length > 255
      return false if !@reference_id.nil? && @reference_id.to_s.length > 50
      return false if @mock.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] reseller_id Value to be assigned
    def reseller_id=(reseller_id)
      if !reseller_id.nil? && reseller_id.to_s.length > 8
        fail ArgumentError, 'invalid value for "reseller_id", the character length must be smaller than or equal to 8.'
      end

      @reseller_id = reseller_id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "EXPIRED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] brand_id Value to be assigned
    def brand_id=(brand_id)
      if brand_id.nil?
        fail ArgumentError, 'brand_id cannot be nil'
      end

      if brand_id.to_s.length > 8
        fail ArgumentError, 'invalid value for "brand_id", the character length must be smaller than or equal to 8.'
      end

      @brand_id = brand_id
    end

    # Custom attribute writer method with validation
    # @param [Object] usecase Value to be assigned
    def usecase=(usecase)
      if usecase.nil?
        fail ArgumentError, 'usecase cannot be nil'
      end

      if usecase.to_s.length > 20
        fail ArgumentError, 'invalid value for "usecase", the character length must be smaller than or equal to 20.'
      end

      @usecase = usecase
    end

    # Custom attribute writer method with validation
    # @param [Object] sub_usecases Value to be assigned
    def sub_usecases=(sub_usecases)
      if sub_usecases.nil?
        fail ArgumentError, 'sub_usecases cannot be nil'
      end

      @sub_usecases = sub_usecases
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if description.nil?
        fail ArgumentError, 'description cannot be nil'
      end

      if description.to_s.length > 4096
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 4096.'
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] sample1 Value to be assigned
    def sample1=(sample1)
      if !sample1.nil? && sample1.to_s.length > 1024
        fail ArgumentError, 'invalid value for "sample1", the character length must be smaller than or equal to 1024.'
      end

      @sample1 = sample1
    end

    # Custom attribute writer method with validation
    # @param [Object] sample2 Value to be assigned
    def sample2=(sample2)
      if !sample2.nil? && sample2.to_s.length > 1024
        fail ArgumentError, 'invalid value for "sample2", the character length must be smaller than or equal to 1024.'
      end

      @sample2 = sample2
    end

    # Custom attribute writer method with validation
    # @param [Object] sample3 Value to be assigned
    def sample3=(sample3)
      if !sample3.nil? && sample3.to_s.length > 1024
        fail ArgumentError, 'invalid value for "sample3", the character length must be smaller than or equal to 1024.'
      end

      @sample3 = sample3
    end

    # Custom attribute writer method with validation
    # @param [Object] sample4 Value to be assigned
    def sample4=(sample4)
      if !sample4.nil? && sample4.to_s.length > 1024
        fail ArgumentError, 'invalid value for "sample4", the character length must be smaller than or equal to 1024.'
      end

      @sample4 = sample4
    end

    # Custom attribute writer method with validation
    # @param [Object] sample5 Value to be assigned
    def sample5=(sample5)
      if !sample5.nil? && sample5.to_s.length > 1024
        fail ArgumentError, 'invalid value for "sample5", the character length must be smaller than or equal to 1024.'
      end

      @sample5 = sample5
    end

    # Custom attribute writer method with validation
    # @param [Object] message_flow Value to be assigned
    def message_flow=(message_flow)
      if !message_flow.nil? && message_flow.to_s.length > 2048
        fail ArgumentError, 'invalid value for "message_flow", the character length must be smaller than or equal to 2048.'
      end

      @message_flow = message_flow
    end

    # Custom attribute writer method with validation
    # @param [Object] help_message Value to be assigned
    def help_message=(help_message)
      if !help_message.nil? && help_message.to_s.length > 255
        fail ArgumentError, 'invalid value for "help_message", the character length must be smaller than or equal to 255.'
      end

      @help_message = help_message
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
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_id == o.account_id &&
          campaign_id == o.campaign_id &&
          csp_id == o.csp_id &&
          reseller_id == o.reseller_id &&
          status == o.status &&
          create_date == o.create_date &&
          auto_renewal == o.auto_renewal &&
          billed_date == o.billed_date &&
          brand_id == o.brand_id &&
          usecase == o.usecase &&
          sub_usecases == o.sub_usecases &&
          description == o.description &&
          embedded_link == o.embedded_link &&
          embedded_phone == o.embedded_phone &&
          affiliate_marketing == o.affiliate_marketing &&
          number_pool == o.number_pool &&
          age_gated == o.age_gated &&
          direct_lending == o.direct_lending &&
          subscriber_optin == o.subscriber_optin &&
          subscriber_optout == o.subscriber_optout &&
          subscriber_help == o.subscriber_help &&
          sample1 == o.sample1 &&
          sample2 == o.sample2 &&
          sample3 == o.sample3 &&
          sample4 == o.sample4 &&
          sample5 == o.sample5 &&
          message_flow == o.message_flow &&
          help_message == o.help_message &&
          reference_id == o.reference_id &&
          mock == o.mock &&
          next_renewal_or_expiration_date == o.next_renewal_or_expiration_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_id, campaign_id, csp_id, reseller_id, status, create_date, auto_renewal, billed_date, brand_id, usecase, sub_usecases, description, embedded_link, embedded_phone, affiliate_marketing, number_pool, age_gated, direct_lending, subscriber_optin, subscriber_optout, subscriber_help, sample1, sample2, sample3, sample4, sample5, message_flow, help_message, reference_id, mock, next_renewal_or_expiration_date].hash
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
