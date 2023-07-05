=begin
#CyberSource Merged Spec

#All CyberSource API specs merged together. These are available at https://developer.cybersource.com/api/reference/api-reference.html

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module CyberSource
  class Ptsv2paymentsidcapturesOrderInformationInvoiceDetails
    # Value used by your customer to identify the order. This value is typically a purchase order number. CyberSource recommends that you do not populate the field with all zeros or nines.  For processor-specific information, see the `user_po` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :purchase_order_number

    # Date the order was processed. `Format: YYYY-MM-DD`.  For processor-specific information, see the `purchaser_order_date` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :purchase_order_date

    # The name of the individual or the company contacted for company authorized purchases.  For processor-specific information, see the `authorized_contact_name` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :purchase_contact_name

    # Flag that indicates whether an order is taxable. This value must be true if the sum of all _lineItems[].taxAmount_ values > 0.  If you do not include any `lineItems[].taxAmount` values in your request, CyberSource does not include `invoiceDetails.taxable` in the data it sends to the processor.  For processor-specific information, see the `tax_indicator` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html)  Possible values:  - **true**  - **false** 
    attr_accessor :taxable

    # VAT invoice number associated with the transaction.  For processor-specific information, see the `vat_invoice_ref_number` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :vat_invoice_reference_number

    # International description code of the overall order’s goods or services or the Categorizes purchases for VAT reporting. Contact your acquirer for a list of codes.  For processor-specific information, see the `summary_commodity_code` field in [Level II and Level III Processing Using the SCMP API.](http://apps.cybersource.com/library/documentation/dev_guides/Level_2_3_SCMP_API/html) 
    attr_accessor :commodity_code

    attr_accessor :transaction_advice_addendum

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'purchase_order_number' => :'purchaseOrderNumber',
        :'purchase_order_date' => :'purchaseOrderDate',
        :'purchase_contact_name' => :'purchaseContactName',
        :'taxable' => :'taxable',
        :'vat_invoice_reference_number' => :'vatInvoiceReferenceNumber',
        :'commodity_code' => :'commodityCode',
        :'transaction_advice_addendum' => :'transactionAdviceAddendum'
      }
    end

    # Attribute mapping from JSON key to ruby-style variable name.
    def self.json_map
      {
        :'purchase_order_number' => :'purchase_order_number',
        :'purchase_order_date' => :'purchase_order_date',
        :'purchase_contact_name' => :'purchase_contact_name',
        :'taxable' => :'taxable',
        :'vat_invoice_reference_number' => :'vat_invoice_reference_number',
        :'commodity_code' => :'commodity_code',
        :'transaction_advice_addendum' => :'transaction_advice_addendum'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'purchase_order_number' => :'String',
        :'purchase_order_date' => :'String',
        :'purchase_contact_name' => :'String',
        :'taxable' => :'BOOLEAN',
        :'vat_invoice_reference_number' => :'String',
        :'commodity_code' => :'String',
        :'transaction_advice_addendum' => :'Array<Ptsv2paymentsOrderInformationInvoiceDetailsTransactionAdviceAddendum>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'purchaseOrderNumber')
        self.purchase_order_number = attributes[:'purchaseOrderNumber']
      end

      if attributes.has_key?(:'purchaseOrderDate')
        self.purchase_order_date = attributes[:'purchaseOrderDate']
      end

      if attributes.has_key?(:'purchaseContactName')
        self.purchase_contact_name = attributes[:'purchaseContactName']
      end

      if attributes.has_key?(:'taxable')
        self.taxable = attributes[:'taxable']
      end

      if attributes.has_key?(:'vatInvoiceReferenceNumber')
        self.vat_invoice_reference_number = attributes[:'vatInvoiceReferenceNumber']
      end

      if attributes.has_key?(:'commodityCode')
        self.commodity_code = attributes[:'commodityCode']
      end

      if attributes.has_key?(:'transactionAdviceAddendum')
        if (value = attributes[:'transactionAdviceAddendum']).is_a?(Array)
          self.transaction_advice_addendum = value
        end
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
    # @param [Object] purchase_order_number Value to be assigned
    def purchase_order_number=(purchase_order_number)
      @purchase_order_number = purchase_order_number
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_order_date Value to be assigned
    def purchase_order_date=(purchase_order_date)
      @purchase_order_date = purchase_order_date
    end

    # Custom attribute writer method with validation
    # @param [Object] purchase_contact_name Value to be assigned
    def purchase_contact_name=(purchase_contact_name)
      @purchase_contact_name = purchase_contact_name
    end

    # Custom attribute writer method with validation
    # @param [Object] vat_invoice_reference_number Value to be assigned
    def vat_invoice_reference_number=(vat_invoice_reference_number)
      @vat_invoice_reference_number = vat_invoice_reference_number
    end

    # Custom attribute writer method with validation
    # @param [Object] commodity_code Value to be assigned
    def commodity_code=(commodity_code)
      @commodity_code = commodity_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          purchase_order_number == o.purchase_order_number &&
          purchase_order_date == o.purchase_order_date &&
          purchase_contact_name == o.purchase_contact_name &&
          taxable == o.taxable &&
          vat_invoice_reference_number == o.vat_invoice_reference_number &&
          commodity_code == o.commodity_code &&
          transaction_advice_addendum == o.transaction_advice_addendum
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [purchase_order_number, purchase_order_date, purchase_contact_name, taxable, vat_invoice_reference_number, commodity_code, transaction_advice_addendum].hash
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
