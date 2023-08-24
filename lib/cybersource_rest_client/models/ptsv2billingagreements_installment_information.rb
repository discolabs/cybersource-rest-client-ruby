=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2billingagreementsInstallmentInformation
    # Applicable only for SI. Required in case the authentication is initiated for SI registration. Valid Values: - `SMS` - `EMAIL` - `BOTH` 
    attr_accessor :alert_preference

    # Date of the first installment payment. Format: YYMMDD. When you do not include this field, CyberSource sends a string of six zeros (000000) to the processor. For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  This field is supported only for Crediario installment payments in Brazil on CyberSource through VisaNet.  The value for this field corresponds to the following data in the TC 33 capture file: - Record: CP01 TCR9 - Position: 42-47 - Field: Date of First Installment 
    attr_accessor :first_installment_date

    # Standing Instruction/Installment identifier. 
    attr_accessor :identifier

    # End date of the SI transactions. Cannot be later than card expiry date. Ideally this can be set to expiry date. Required in case the authentication is initiated for SI registration. 
    attr_accessor :last_installment_date

    # Maximum Amount for which SI can be initiated. Required in case the authentication is initiated for SI registration. 
    attr_accessor :max_amount

    # Minimum Amount for which SI can be initiated. Required in case the authentication is initiated for SI registration. 
    attr_accessor :min_amount

    # Payment plan for the installments.  Possible values: - 0 (default): Regular installment. This value is not allowed for airline transactions. - 1: Installment payment with down payment. - 2: Installment payment without down payment. This value is supported only for airline transactions. - 3: Installment payment; down payment and boarding fee will follow. This value is supported only for airline transactions. - 4: Down payment only; regular installment payment will follow. - 5: Boarding fee only. This value is supported only for airline transactions.  This field is supported only for installment payments with Visa on CyberSource through VisaNet in Brazil.  For details, see \"Installment Payments on CyberSource through VisaNet\" in the [Credit Card Services Using the SCMP API Guide.](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  The value for this field corresponds to the following data in the TC 33 capture file5: - Record: CP07 TCR1 - Position: 9 - Field: Merchant Installment Supporting Information 
    attr_accessor :payment_type

    # Preferred date for initiating the SI transaction every month. This field need not be sent in case the SI has to be initiated as and when required, e.g., topping up the wallet, etc. 
    attr_accessor :preferred_day

    # Installment number when making payments in installments. Used along with `totalCount` to track which payment is being processed.  For example, the second of 5 payments would be passed to CyberSource as `sequence` = 2 and `totalCount` = 5.  For details, see \"Installment Payments\" in the [Credit Card Services Using the SCMP API Guide](https://apps.cybersource.com/library/documentation/dev_guides/CC_Svcs_SCMP_API/html/)  #### Chase Paymentech Solutions and FDC Compass This field is optional because this value is required in the merchant descriptors. For details, see \"Chase Paymentech Solutions Merchant Descriptors\" and \"FDC Compass Merchant Descriptors\" in the [Merchant Descriptors Using the SCMP API] (https://apps.cybersource.com/library/documentation/dev_guides/Merchant_Descriptors_SCMP_API/html/)  #### CyberSource through VisaNet When you do not include this field in a request for a Crediario installment payment, CyberSource sends a value of 0 to the processor.  For Crediario installment payments, the value for this field corresponds to the following data in the TC 33 capture file*: - Record: CP01 TCR9 - Position: 38-40 - Field: Installment Payment Number  * The TC 33 Capture file contains information about the purchases and refunds that a merchant submits to CyberSource. CyberSource through VisaNet creates the TC 33 Capture file at the end of the day and sends it to the merchant’s acquirer, who uses this information to facilitate end-of-day clearing processing with payment card companies. 
    attr_accessor :sequence

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'alert_preference' => :'alertPreference',
        :'first_installment_date' => :'firstInstallmentDate',
        :'identifier' => :'identifier',
        :'last_installment_date' => :'lastInstallmentDate',
        :'max_amount' => :'maxAmount',
        :'min_amount' => :'minAmount',
        :'payment_type' => :'paymentType',
        :'preferred_day' => :'preferredDay',
        :'sequence' => :'sequence'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'alert_preference' => :'alert_preference',
        :'first_installment_date' => :'first_installment_date',
        :'identifier' => :'identifier',
        :'last_installment_date' => :'last_installment_date',
        :'max_amount' => :'max_amount',
        :'min_amount' => :'min_amount',
        :'payment_type' => :'payment_type',
        :'preferred_day' => :'preferred_day',
        :'sequence' => :'sequence'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'alert_preference' => :'String',
        :'first_installment_date' => :'String',
        :'identifier' => :'String',
        :'last_installment_date' => :'String',
        :'max_amount' => :'String',
        :'min_amount' => :'String',
        :'payment_type' => :'String',
        :'preferred_day' => :'String',
        :'sequence' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'alertPreference')
        self.alert_preference = attributes[:'alertPreference']
      end

      if attributes.has_key?(:'firstInstallmentDate')
        self.first_installment_date = attributes[:'firstInstallmentDate']
      end

      if attributes.has_key?(:'identifier')
        self.identifier = attributes[:'identifier']
      end

      if attributes.has_key?(:'lastInstallmentDate')
        self.last_installment_date = attributes[:'lastInstallmentDate']
      end

      if attributes.has_key?(:'maxAmount')
        self.max_amount = attributes[:'maxAmount']
      end

      if attributes.has_key?(:'minAmount')
        self.min_amount = attributes[:'minAmount']
      end

      if attributes.has_key?(:'paymentType')
        self.payment_type = attributes[:'paymentType']
      end

      if attributes.has_key?(:'preferredDay')
        self.preferred_day = attributes[:'preferredDay']
      end

      if attributes.has_key?(:'sequence')
        self.sequence = attributes[:'sequence']
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
    # @param [Object] alert_preference Value to be assigned
    def alert_preference=(alert_preference)
      @alert_preference = alert_preference
    end

    # Custom attribute writer method with validation
    # @param [Object] first_installment_date Value to be assigned
    def first_installment_date=(first_installment_date)
      @first_installment_date = first_installment_date
    end

    # Custom attribute writer method with validation
    # @param [Object] last_installment_date Value to be assigned
    def last_installment_date=(last_installment_date)
      @last_installment_date = last_installment_date
    end

    # Custom attribute writer method with validation
    # @param [Object] max_amount Value to be assigned
    def max_amount=(max_amount)
      @max_amount = max_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] min_amount Value to be assigned
    def min_amount=(min_amount)
      @min_amount = min_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_type Value to be assigned
    def payment_type=(payment_type)
      @payment_type = payment_type
    end

    # Custom attribute writer method with validation
    # @param [Object] preferred_day Value to be assigned
    def preferred_day=(preferred_day)
      @preferred_day = preferred_day
    end

    # Custom attribute writer method with validation
    # @param [Object] sequence Value to be assigned
    def sequence=(sequence)
      @sequence = sequence
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          alert_preference == o.alert_preference &&
          first_installment_date == o.first_installment_date &&
          identifier == o.identifier &&
          last_installment_date == o.last_installment_date &&
          max_amount == o.max_amount &&
          min_amount == o.min_amount &&
          payment_type == o.payment_type &&
          preferred_day == o.preferred_day &&
          sequence == o.sequence
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [alert_preference, first_installment_date, identifier, last_installment_date, max_amount, min_amount, payment_type, preferred_day, sequence].hash
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
