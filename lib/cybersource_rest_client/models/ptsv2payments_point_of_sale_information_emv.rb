=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsPointOfSaleInformationEmv
    # EMV data that is transmitted from the chip card to the issuer, and from the issuer to the chip card. The EMV data is in the tag-length-value format and includes chip card tags, terminal tags, and transaction detail tags.  For information about the individual tags, see the “Application Specification” section in the EMV 4.3 Specifications: http://emvco.com  **Note** Card present information about EMV applies only to credit card processing and PIN debit processing. All other card present information applies only to credit card processing. PIN debit processing is available only on FDC Nashville Global.  **Important** The following tags contain sensitive information and **must not** be included in this field:   - `56`: Track 1 equivalent data  - `57`: Track 2 equivalent data  - `5A`: Application PAN  - `5F20`: Cardholder name  - `5F24`: Application expiration date (This sensitivity has been relaxed for Credit Mutuel-CIC, American Express Direct, FDC Nashville Global, First Data Merchant Solutions, and SIX)  - `99`: Transaction PIN  - `9F0B`: Cardholder name (extended)  - `9F1F`: Track 1 discretionary data  - `9F20`: Track 2 discretionary data  For captures, this field is required for contact EMV transactions. Otherwise, it is optional.  For credits, this field is required for contact EMV stand-alone credits and contactless EMV stand-alone credits. Otherwise, it is optional.  **Important** For contact EMV captures, contact EMV stand-alone credits, and contactless EMV stand-alone credits, you must include the following tags in this field. For all other types of EMV transactions, the following tags are optional.   - `95`: Terminal verification results  - `9F10`: Issuer application data  - `9F26`: Application cryptogram   #### CyberSource through VisaNet - In Japan: 199 bytes - In other countries: String (252)  #### GPX This field only supports transactions from the following card types: - Visa - Mastercard - AMEX - Discover - Diners - JCB - Union Pay International  #### JCN Gateway The following tags must be included: - `4F`: Application identifier - `84`: Dedicated file name  Data length: 199 bytes  #### All other processors: String (999)  #### Used by Authorization: Optional Authorization Reversal: Optional Credit: Optional PIN Debit processing (purchase, credit and reversal): Optional 
    attr_accessor :tags

    # Method that was used to verify the cardholder's identity.  Possible values:  - `0`: No verification  - `1`: Signature  This field is supported only on **American Express Direct**. 
    attr_accessor :cardholder_verification_method_used

    # Number assigned to a specific card when two or more cards are associated with the same primary account number. This value enables issuers to distinguish among multiple cards that are linked to the same account. This value can also act as a tracking tool when reissuing cards. When this value is available, it is provided by the chip reader. When the chip reader does not provide this value, do not include this field in your request.  **Note** Card present information about EMV applies only to credit card processing and PIN debit processing. All other card present information applies only to credit card processing. PIN debit processing is available only on CyberSource through VisaNet and FDC Nashville Global.  #### Used by Authorization: Optional PIN Debit processing: Optional  #### GPX  This field only supports transactions from the following card types: - Visa - Mastercard - AMEX - Discover - Diners - JCB - Union Pay International 
    attr_accessor :card_sequence_number

    # Indicates whether a fallback method was used to enter credit card information into the POS terminal. When a technical problem prevents a successful exchange of information between a chip card and a chip-capable terminal:   1. Swipe the card or key the credit card information into the POS terminal.  2. Use the pointOfSaleInformation.entryMode field to indicate whether the information was swiped or keyed.   Possible values: - `true`: Fallback method was used. - `false` (default): Fallback method was not used.  This field is supported only on American Express Direct, Chase Paymentech Solutions, CyberSource through VisaNet, FDC Nashville Global, GPN, JCN Gateway, OmniPay Direct, and SIX. 
    attr_accessor :fallback

    # Reason for the EMV fallback transaction. An EMV fallback transaction occurs when an EMV transaction fails for one of these reasons:   - Technical failure: the EMV terminal or EMV card cannot read and process chip data.  - Empty candidate list failure: the EMV terminal does not have any applications in common with the EMV card.    EMV terminals are coded to determine whether the terminal and EMV card have any applications in common.    EMV terminals provide this information to you.  Possible values:   - `1`: Transaction was initiated with information from a magnetic stripe, and the previous transaction at the     EMV terminal either used information from a successful chip read or it was not a chip transaction.  - `2`: Transaction was initiated with information from a magnetic stripe, and the previous transaction at the     EMV terminal was an EMV fallback transaction because the attempted chip read was unsuccessful.  This field is supported only on **GPN** and **JCN Gateway**. **NOTE**: This field is required when an EMV transaction fails for a technical reason. Do not include this field when the EMV terminal does not have any applications in common with the EMV card. 
    attr_accessor :fallback_condition

    # #### Visa Platform Connect Value “true” indicates this transaction is intentionally duplicated . The field contains value “true” which indicates that merchant has intentionally duplicated single tap transaction. Merchant is intentionally sending a duplicate auth request for a single tap txn because the issuer requested a PIN. 
    attr_accessor :is_repeat

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'tags' => :'tags',
        :'cardholder_verification_method_used' => :'cardholderVerificationMethodUsed',
        :'card_sequence_number' => :'cardSequenceNumber',
        :'fallback' => :'fallback',
        :'fallback_condition' => :'fallbackCondition',
        :'is_repeat' => :'isRepeat'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'tags' => :'String',
        :'cardholder_verification_method_used' => :'Integer',
        :'card_sequence_number' => :'String',
        :'fallback' => :'BOOLEAN',
        :'fallback_condition' => :'Integer',
        :'is_repeat' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'tags')
        self.tags = attributes[:'tags']
      end

      if attributes.has_key?(:'cardholderVerificationMethodUsed')
        self.cardholder_verification_method_used = attributes[:'cardholderVerificationMethodUsed']
      end

      if attributes.has_key?(:'cardSequenceNumber')
        self.card_sequence_number = attributes[:'cardSequenceNumber']
      end

      if attributes.has_key?(:'fallback')
        self.fallback = attributes[:'fallback']
      end

      if attributes.has_key?(:'fallbackCondition')
        self.fallback_condition = attributes[:'fallbackCondition']
      end

      if attributes.has_key?(:'isRepeat')
        self.is_repeat = attributes[:'isRepeat']
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
    # @param [Object] tags Value to be assigned
    def tags=(tags)
      @tags = tags
    end

    # Custom attribute writer method with validation
    # @param [Object] card_sequence_number Value to be assigned
    def card_sequence_number=(card_sequence_number)
      @card_sequence_number = card_sequence_number
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          tags == o.tags &&
          cardholder_verification_method_used == o.cardholder_verification_method_used &&
          card_sequence_number == o.card_sequence_number &&
          fallback == o.fallback &&
          fallback_condition == o.fallback_condition &&
          is_repeat == o.is_repeat
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [tags, cardholder_verification_method_used, card_sequence_number, fallback, fallback_condition, is_repeat].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
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
