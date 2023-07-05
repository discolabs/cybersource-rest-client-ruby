=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class PtsV2PaymentsPost201ResponseConsumerAuthenticationInformationStrongAuthenticationIssuerInformation
    # Possible values: Visa Platform Connect - `8401` Merchant not participating in Visa Trusted Listing Program. - `8402` Issuer not participating in Visa Trusted Listing Program. - `8403` Cardholder has not trusted the merchant (supplied by Visa Net). - `8404` Indeterminate or invalid issuer response. - `8473` Cardholder has not trusted the merchant (issuer-supplied). - `8474` Did not meet the exemption criteria (issuer-supplied).  Upto 20 Values may be received in a transaction. 
    attr_accessor :risk_analysis_exemption_result

    # Possible values: Visa Platform Connect - `2` Trusted merchant exemption validated/honored. - `3` Trusted merchant exemption failed validation/not honored. 
    attr_accessor :trusted_merchant_exemption_result

    # This will be the value returned by Visanet when low value exemption has been requested.  Valid values: Visa Platform Connect - `2` Low value exemption validated/honored - `3` Low value exemption failed validation/not honored 
    attr_accessor :low_value_exemption_result

    # This will be the value returned by Visanet when secure corporate payment (scp) exemption has been requested.  Valid values: Visa Platform Connect - `2` Secure corporate payment exemption validated/honored - `3` Secure corporate payment exemption failed validation/not honored 
    attr_accessor :secure_corporate_payment_result

    # This will be the value returned by Visanet when transaction risk analysis (TRA) exemption has been requested.    Valid values: Visa Platform Connect   - `2` transaction risk analysis (TRA) exemption validated/honored   - `3` transaction risk analysis (TRA) exemption failed validation/not honored 
    attr_accessor :transaction_risk_analysis_exemption_result

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'risk_analysis_exemption_result' => :'riskAnalysisExemptionResult',
        :'trusted_merchant_exemption_result' => :'trustedMerchantExemptionResult',
        :'low_value_exemption_result' => :'lowValueExemptionResult',
        :'secure_corporate_payment_result' => :'secureCorporatePaymentResult',
        :'transaction_risk_analysis_exemption_result' => :'transactionRiskAnalysisExemptionResult'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'risk_analysis_exemption_result' => :'risk_analysis_exemption_result',
        :'trusted_merchant_exemption_result' => :'trusted_merchant_exemption_result',
        :'low_value_exemption_result' => :'low_value_exemption_result',
        :'secure_corporate_payment_result' => :'secure_corporate_payment_result',
        :'transaction_risk_analysis_exemption_result' => :'transaction_risk_analysis_exemption_result'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'risk_analysis_exemption_result' => :'String',
        :'trusted_merchant_exemption_result' => :'String',
        :'low_value_exemption_result' => :'String',
        :'secure_corporate_payment_result' => :'String',
        :'transaction_risk_analysis_exemption_result' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'riskAnalysisExemptionResult')
        self.risk_analysis_exemption_result = attributes[:'riskAnalysisExemptionResult']
      end

      if attributes.has_key?(:'trustedMerchantExemptionResult')
        self.trusted_merchant_exemption_result = attributes[:'trustedMerchantExemptionResult']
      end

      if attributes.has_key?(:'lowValueExemptionResult')
        self.low_value_exemption_result = attributes[:'lowValueExemptionResult']
      end

      if attributes.has_key?(:'secureCorporatePaymentResult')
        self.secure_corporate_payment_result = attributes[:'secureCorporatePaymentResult']
      end

      if attributes.has_key?(:'transactionRiskAnalysisExemptionResult')
        self.transaction_risk_analysis_exemption_result = attributes[:'transactionRiskAnalysisExemptionResult']
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
    # @param [Object] risk_analysis_exemption_result Value to be assigned
    def risk_analysis_exemption_result=(risk_analysis_exemption_result)
      @risk_analysis_exemption_result = risk_analysis_exemption_result
    end

    # Custom attribute writer method with validation
    # @param [Object] trusted_merchant_exemption_result Value to be assigned
    def trusted_merchant_exemption_result=(trusted_merchant_exemption_result)
      @trusted_merchant_exemption_result = trusted_merchant_exemption_result
    end

    # Custom attribute writer method with validation
    # @param [Object] low_value_exemption_result Value to be assigned
    def low_value_exemption_result=(low_value_exemption_result)
      @low_value_exemption_result = low_value_exemption_result
    end

    # Custom attribute writer method with validation
    # @param [Object] secure_corporate_payment_result Value to be assigned
    def secure_corporate_payment_result=(secure_corporate_payment_result)
      @secure_corporate_payment_result = secure_corporate_payment_result
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_risk_analysis_exemption_result Value to be assigned
    def transaction_risk_analysis_exemption_result=(transaction_risk_analysis_exemption_result)
      @transaction_risk_analysis_exemption_result = transaction_risk_analysis_exemption_result
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          risk_analysis_exemption_result == o.risk_analysis_exemption_result &&
          trusted_merchant_exemption_result == o.trusted_merchant_exemption_result &&
          low_value_exemption_result == o.low_value_exemption_result &&
          secure_corporate_payment_result == o.secure_corporate_payment_result &&
          transaction_risk_analysis_exemption_result == o.transaction_risk_analysis_exemption_result
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [risk_analysis_exemption_result, trusted_merchant_exemption_result, low_value_exemption_result, secure_corporate_payment_result, transaction_risk_analysis_exemption_result].hash
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
