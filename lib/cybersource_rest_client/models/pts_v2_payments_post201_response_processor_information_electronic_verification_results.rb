=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsPost201ResponseProcessorInformationElectronicVerificationResults
    # Mapped Electronic Verification response code for the customer’s name.  For details, see `auth_ev_name` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :code

    # Raw Electronic Verification response code from the processor for the customer’s last name
    attr_accessor :code_raw

    # Mapped Electronic Verification response code for the customer’s email address.  For details, see `auth_ev_email` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :email

    # Raw Electronic Verification response code from the processor for the customer’s email address.
    attr_accessor :email_raw

    # Mapped Electronic Verification response code for the customer’s phone number.  For details, see `auth_ev_phone_number` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :phone_number

    # Raw Electronic Verification response code from the processor for the customer’s phone number.
    attr_accessor :phone_number_raw

    # Mapped Electronic Verification response code for the customer’s postal code.  For details, see `auth_ev_postal_code` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :postal_code

    # Raw Electronic Verification response code from the processor for the customer’s postal code.
    attr_accessor :postal_code_raw

    # Mapped Electronic Verification response code for the customer’s street address.  For details, see `auth_ev_street` field description in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/) 
    attr_accessor :street

    # Raw Electronic Verification response code from the processor for the customer’s street address.
    attr_accessor :street_raw

    # #### Visa Platform Connect Mapped Electronic Verification response code for the customer’s name.  Valid values :  'Y'   Yes, the data Matches 'N'   No Match 'O'   Partial Match 
    attr_accessor :name

    # #### Visa Platform Connect Raw Electronic Verification response code from the processor for the customer’s name.  Valid values :  '01'     Match '50'     Partial Match '99'     No Match 
    attr_accessor :name_raw

    # #### Visa Platform Connect Raw electronic verification response code from the processor for the customer’s first name.  Valid values :  '01'     Match '50'     Partial Match '99'     No Match 
    attr_accessor :first_name_raw

    # #### Visa Platform Connect Mapped electronic verification response code from the processor for the customer’s first name.  Valid values :  'Y'   Yes, the data Matches 'N'   No Match 'O'   Partial Match 
    attr_accessor :first_name

    # #### Visa Platform Connect Raw electronic verification response code from the processor for the customer’s middle name.  Valid values :  '01'     Match '50'     Partial Match '99'     No Match 
    attr_accessor :middle_name_raw

    # #### Visa Platform Connect Mapped electronic verification response code from the processor for the customer’s middle name.  Valid values :  'Y'   Yes, the data Matches 'N'   No Match 'O'   Partial Match 
    attr_accessor :middle_name

    # #### Visa Platform Connect Raw electronic verification response code from the processor for the customer’s last name.  Valid values :  '01'     Match '50'     Partial Match '99'     No Match 
    attr_accessor :last_name_raw

    # #### Visa Platform Connect Mapped electronic verification response code from the processor for the customer’s last name.  Valid values :  'Y'   Yes, the data Matches 'N'   No Match 'O'   Partial Match 
    attr_accessor :last_name

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'code' => :'code',
        :'code_raw' => :'codeRaw',
        :'email' => :'email',
        :'email_raw' => :'emailRaw',
        :'phone_number' => :'phoneNumber',
        :'phone_number_raw' => :'phoneNumberRaw',
        :'postal_code' => :'postalCode',
        :'postal_code_raw' => :'postalCodeRaw',
        :'street' => :'street',
        :'street_raw' => :'streetRaw',
        :'name' => :'name',
        :'name_raw' => :'nameRaw',
        :'first_name_raw' => :'firstNameRaw',
        :'first_name' => :'firstName',
        :'middle_name_raw' => :'middleNameRaw',
        :'middle_name' => :'middleName',
        :'last_name_raw' => :'lastNameRaw',
        :'last_name' => :'lastName'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'code' => :'code',
        :'code_raw' => :'code_raw',
        :'email' => :'email',
        :'email_raw' => :'email_raw',
        :'phone_number' => :'phone_number',
        :'phone_number_raw' => :'phone_number_raw',
        :'postal_code' => :'postal_code',
        :'postal_code_raw' => :'postal_code_raw',
        :'street' => :'street',
        :'street_raw' => :'street_raw',
        :'name' => :'name',
        :'name_raw' => :'name_raw',
        :'first_name_raw' => :'first_name_raw',
        :'first_name' => :'first_name',
        :'middle_name_raw' => :'middle_name_raw',
        :'middle_name' => :'middle_name',
        :'last_name_raw' => :'last_name_raw',
        :'last_name' => :'last_name'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'code' => :'String',
        :'code_raw' => :'String',
        :'email' => :'String',
        :'email_raw' => :'String',
        :'phone_number' => :'String',
        :'phone_number_raw' => :'String',
        :'postal_code' => :'String',
        :'postal_code_raw' => :'String',
        :'street' => :'String',
        :'street_raw' => :'String',
        :'name' => :'String',
        :'name_raw' => :'String',
        :'first_name_raw' => :'String',
        :'first_name' => :'String',
        :'middle_name_raw' => :'String',
        :'middle_name' => :'String',
        :'last_name_raw' => :'String',
        :'last_name' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'codeRaw')
        self.code_raw = attributes[:'codeRaw']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'emailRaw')
        self.email_raw = attributes[:'emailRaw']
      end

      if attributes.has_key?(:'phoneNumber')
        self.phone_number = attributes[:'phoneNumber']
      end

      if attributes.has_key?(:'phoneNumberRaw')
        self.phone_number_raw = attributes[:'phoneNumberRaw']
      end

      if attributes.has_key?(:'postalCode')
        self.postal_code = attributes[:'postalCode']
      end

      if attributes.has_key?(:'postalCodeRaw')
        self.postal_code_raw = attributes[:'postalCodeRaw']
      end

      if attributes.has_key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.has_key?(:'streetRaw')
        self.street_raw = attributes[:'streetRaw']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'nameRaw')
        self.name_raw = attributes[:'nameRaw']
      end

      if attributes.has_key?(:'firstNameRaw')
        self.first_name_raw = attributes[:'firstNameRaw']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'middleNameRaw')
        self.middle_name_raw = attributes[:'middleNameRaw']
      end

      if attributes.has_key?(:'middleName')
        self.middle_name = attributes[:'middleName']
      end

      if attributes.has_key?(:'lastNameRaw')
        self.last_name_raw = attributes[:'lastNameRaw']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
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
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] code_raw Value to be assigned
    def code_raw=(code_raw)
      @code_raw = code_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)
      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] email_raw Value to be assigned
    def email_raw=(email_raw)
      @email_raw = email_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number Value to be assigned
    def phone_number=(phone_number)
      @phone_number = phone_number
    end

    # Custom attribute writer method with validation
    # @param [Object] phone_number_raw Value to be assigned
    def phone_number_raw=(phone_number_raw)
      @phone_number_raw = phone_number_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code Value to be assigned
    def postal_code=(postal_code)
      @postal_code = postal_code
    end

    # Custom attribute writer method with validation
    # @param [Object] postal_code_raw Value to be assigned
    def postal_code_raw=(postal_code_raw)
      @postal_code_raw = postal_code_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] street Value to be assigned
    def street=(street)
      @street = street
    end

    # Custom attribute writer method with validation
    # @param [Object] street_raw Value to be assigned
    def street_raw=(street_raw)
      @street_raw = street_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] name_raw Value to be assigned
    def name_raw=(name_raw)
      @name_raw = name_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name_raw Value to be assigned
    def first_name_raw=(first_name_raw)
      @first_name_raw = first_name_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)
      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] middle_name_raw Value to be assigned
    def middle_name_raw=(middle_name_raw)
      @middle_name_raw = middle_name_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] middle_name Value to be assigned
    def middle_name=(middle_name)
      @middle_name = middle_name
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name_raw Value to be assigned
    def last_name_raw=(last_name_raw)
      @last_name_raw = last_name_raw
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)
      @last_name = last_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          code == o.code &&
          code_raw == o.code_raw &&
          email == o.email &&
          email_raw == o.email_raw &&
          phone_number == o.phone_number &&
          phone_number_raw == o.phone_number_raw &&
          postal_code == o.postal_code &&
          postal_code_raw == o.postal_code_raw &&
          street == o.street &&
          street_raw == o.street_raw &&
          name == o.name &&
          name_raw == o.name_raw &&
          first_name_raw == o.first_name_raw &&
          first_name == o.first_name &&
          middle_name_raw == o.middle_name_raw &&
          middle_name == o.middle_name &&
          last_name_raw == o.last_name_raw &&
          last_name == o.last_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [code, code_raw, email, email_raw, phone_number, phone_number_raw, postal_code, postal_code_raw, street, street_raw, name, name_raw, first_name_raw, first_name, middle_name_raw, middle_name, last_name_raw, last_name].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{self.class.json_map[key]}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{self.class.json_map[key]}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = CyberSource.const_get(type).new
        temp_model.build_from_hash(value)
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
        next if value.nil?
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
