=begin
#AUM Immo

#No descripton provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'date'

module SwisseldexAumImmo
  # Only relevant if 'messageTypeCode' is 2 (move-out) and person/tenant leaves country
  class UploadMessageGoesTo
    attr_accessor :address_line1

    attr_accessor :address_line2

    attr_accessor :street

    attr_accessor :house_number

    attr_accessor :dwelling_number

    attr_accessor :post_office_box_number

    attr_accessor :post_office_box_text

    attr_accessor :locality

    attr_accessor :town

    # Either this property or 'foreignZipCode' must be provided
    attr_accessor :swiss_zip_code

    # Either this property or 'swissZipCode' must be provided
    attr_accessor :foreign_zip_code

    # ISO 2 format. Must be conforming to availability of 'swissZipCode' and 'foreignZipCode'
    attr_accessor :country


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'address_line1' => :'addressLine1',
        :'address_line2' => :'addressLine2',
        :'street' => :'street',
        :'house_number' => :'houseNumber',
        :'dwelling_number' => :'dwellingNumber',
        :'post_office_box_number' => :'postOfficeBoxNumber',
        :'post_office_box_text' => :'postOfficeBoxText',
        :'locality' => :'locality',
        :'town' => :'town',
        :'swiss_zip_code' => :'swissZipCode',
        :'foreign_zip_code' => :'foreignZipCode',
        :'country' => :'country'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'address_line1' => :'String',
        :'address_line2' => :'String',
        :'street' => :'String',
        :'house_number' => :'String',
        :'dwelling_number' => :'String',
        :'post_office_box_number' => :'Integer',
        :'post_office_box_text' => :'String',
        :'locality' => :'String',
        :'town' => :'String',
        :'swiss_zip_code' => :'Integer',
        :'foreign_zip_code' => :'String',
        :'country' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'addressLine1')
        self.address_line1 = attributes[:'addressLine1']
      end

      if attributes.has_key?(:'addressLine2')
        self.address_line2 = attributes[:'addressLine2']
      end

      if attributes.has_key?(:'street')
        self.street = attributes[:'street']
      end

      if attributes.has_key?(:'houseNumber')
        self.house_number = attributes[:'houseNumber']
      end

      if attributes.has_key?(:'dwellingNumber')
        self.dwelling_number = attributes[:'dwellingNumber']
      end

      if attributes.has_key?(:'postOfficeBoxNumber')
        self.post_office_box_number = attributes[:'postOfficeBoxNumber']
      end

      if attributes.has_key?(:'postOfficeBoxText')
        self.post_office_box_text = attributes[:'postOfficeBoxText']
      end

      if attributes.has_key?(:'locality')
        self.locality = attributes[:'locality']
      end

      if attributes.has_key?(:'town')
        self.town = attributes[:'town']
      end

      if attributes.has_key?(:'swissZipCode')
        self.swiss_zip_code = attributes[:'swissZipCode']
      end

      if attributes.has_key?(:'foreignZipCode')
        self.foreign_zip_code = attributes[:'foreignZipCode']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @country.nil?
        invalid_properties.push("invalid value for 'country', country cannot be nil.")
      end

      if @country !~ Regexp.new(/^\D{2}$/)
        invalid_properties.push("invalid value for 'country', must conform to the pattern ^\\D{2}$.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @street.nil?
      return false if @town.nil?
      return false if @country.nil?
      return false if @country !~ Regexp.new(/^\D{2}$/)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.nil?
        fail ArgumentError, "country cannot be nil"
      end

      if country !~ Regexp.new(/^\D{2}$/)
        fail ArgumentError, "invalid value for 'country', must conform to the pattern ^\\D{2}$."
      end

      @country = country
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          address_line1 == o.address_line1 &&
          address_line2 == o.address_line2 &&
          street == o.street &&
          house_number == o.house_number &&
          dwelling_number == o.dwelling_number &&
          post_office_box_number == o.post_office_box_number &&
          post_office_box_text == o.post_office_box_text &&
          locality == o.locality &&
          town == o.town &&
          swiss_zip_code == o.swiss_zip_code &&
          foreign_zip_code == o.foreign_zip_code &&
          country == o.country
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [address_line1, address_line2, street, house_number, dwelling_number, post_office_box_number, post_office_box_text, locality, town, swiss_zip_code, foreign_zip_code, country].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /^Array<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        if value.to_s =~ /^(true|t|yes|y|1)$/i
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
      when /\AHash<(?<k_type>.+), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = SwisseldexAumImmo.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
