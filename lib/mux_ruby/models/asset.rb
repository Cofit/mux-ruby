=begin
# Mux Ruby - Copyright 2019 Mux Inc.
# NOTE: This file is auto generated. Do not edit this file manually.
=end

require 'date'

module MuxRuby
  class Asset
    attr_accessor :id

    attr_accessor :created_at

    attr_accessor :deleted_at

    attr_accessor :status

    attr_accessor :duration

    attr_accessor :max_stored_resolution

    attr_accessor :max_stored_frame_rate

    attr_accessor :aspect_ratio

    attr_accessor :playback_ids

    attr_accessor :tracks

    attr_accessor :demo

    attr_accessor :errors

    attr_accessor :per_title_encode

    attr_accessor :is_live

    attr_accessor :passthrough

    attr_accessor :live_stream_id

    attr_accessor :master

    attr_accessor :master_access

    attr_accessor :mp4_support

    attr_accessor :static_renditions

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
        :'id' => :'id',
        :'created_at' => :'created_at',
        :'deleted_at' => :'deleted_at',
        :'status' => :'status',
        :'duration' => :'duration',
        :'max_stored_resolution' => :'max_stored_resolution',
        :'max_stored_frame_rate' => :'max_stored_frame_rate',
        :'aspect_ratio' => :'aspect_ratio',
        :'playback_ids' => :'playback_ids',
        :'tracks' => :'tracks',
        :'demo' => :'demo',
        :'errors' => :'errors',
        :'per_title_encode' => :'per_title_encode',
        :'is_live' => :'is_live',
        :'passthrough' => :'passthrough',
        :'live_stream_id' => :'live_stream_id',
        :'master' => :'master',
        :'master_access' => :'master_access',
        :'mp4_support' => :'mp4_support',
        :'static_renditions' => :'static_renditions'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'created_at' => :'String',
        :'deleted_at' => :'String',
        :'status' => :'String',
        :'duration' => :'Float',
        :'max_stored_resolution' => :'String',
        :'max_stored_frame_rate' => :'Float',
        :'aspect_ratio' => :'String',
        :'playback_ids' => :'Array<PlaybackID>',
        :'tracks' => :'Array<Track>',
        :'demo' => :'BOOLEAN',
        :'errors' => :'AssetErrors',
        :'per_title_encode' => :'BOOLEAN',
        :'is_live' => :'BOOLEAN',
        :'passthrough' => :'String',
        :'live_stream_id' => :'String',
        :'master' => :'AssetMaster',
        :'master_access' => :'String',
        :'mp4_support' => :'String',
        :'static_renditions' => :'AssetStaticRenditions'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.has_key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.has_key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.has_key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.has_key?(:'max_stored_resolution')
        self.max_stored_resolution = attributes[:'max_stored_resolution']
      end

      if attributes.has_key?(:'max_stored_frame_rate')
        self.max_stored_frame_rate = attributes[:'max_stored_frame_rate']
      end

      if attributes.has_key?(:'aspect_ratio')
        self.aspect_ratio = attributes[:'aspect_ratio']
      end

      if attributes.has_key?(:'playback_ids')
        if (value = attributes[:'playback_ids']).is_a?(Array)
          self.playback_ids = value
        end
      end

      if attributes.has_key?(:'tracks')
        if (value = attributes[:'tracks']).is_a?(Array)
          self.tracks = value
        end
      end

      if attributes.has_key?(:'demo')
        self.demo = attributes[:'demo']
      end

      if attributes.has_key?(:'errors')
        self.errors = attributes[:'errors']
      end

      if attributes.has_key?(:'per_title_encode')
        self.per_title_encode = attributes[:'per_title_encode']
      end

      if attributes.has_key?(:'is_live')
        self.is_live = attributes[:'is_live']
      end

      if attributes.has_key?(:'passthrough')
        self.passthrough = attributes[:'passthrough']
      end

      if attributes.has_key?(:'live_stream_id')
        self.live_stream_id = attributes[:'live_stream_id']
      end

      if attributes.has_key?(:'master')
        self.master = attributes[:'master']
      end

      if attributes.has_key?(:'master_access')
        self.master_access = attributes[:'master_access']
      else
        self.master_access = 'none'
      end

      if attributes.has_key?(:'mp4_support')
        self.mp4_support = attributes[:'mp4_support']
      else
        self.mp4_support = 'none'
      end

      if attributes.has_key?(:'static_renditions')
        self.static_renditions = attributes[:'static_renditions']
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
      master_access_validator = EnumAttributeValidator.new('String', ['temporary', 'none'])
      return false unless master_access_validator.valid?(@master_access)
      mp4_support_validator = EnumAttributeValidator.new('String', ['standard', 'none'])
      return false unless mp4_support_validator.valid?(@mp4_support)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] master_access Object to be assigned
    def master_access=(master_access)
      validator = EnumAttributeValidator.new('String', ['temporary', 'none'])
      unless validator.valid?(master_access)
        fail ArgumentError, 'invalid value for "master_access", must be one of #{validator.allowable_values}.'
      end
      @master_access = master_access
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mp4_support Object to be assigned
    def mp4_support=(mp4_support)
      validator = EnumAttributeValidator.new('String', ['standard', 'none'])
      unless validator.valid?(mp4_support)
        fail ArgumentError, 'invalid value for "mp4_support", must be one of #{validator.allowable_values}.'
      end
      @mp4_support = mp4_support
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          deleted_at == o.deleted_at &&
          status == o.status &&
          duration == o.duration &&
          max_stored_resolution == o.max_stored_resolution &&
          max_stored_frame_rate == o.max_stored_frame_rate &&
          aspect_ratio == o.aspect_ratio &&
          playback_ids == o.playback_ids &&
          tracks == o.tracks &&
          demo == o.demo &&
          errors == o.errors &&
          per_title_encode == o.per_title_encode &&
          is_live == o.is_live &&
          passthrough == o.passthrough &&
          live_stream_id == o.live_stream_id &&
          master == o.master &&
          master_access == o.master_access &&
          mp4_support == o.mp4_support &&
          static_renditions == o.static_renditions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created_at, deleted_at, status, duration, max_stored_resolution, max_stored_frame_rate, aspect_ratio, playback_ids, tracks, demo, errors, per_title_encode, is_live, passthrough, live_stream_id, master, master_access, mp4_support, static_renditions].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
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
        MuxRuby.const_get(type).build_from_hash(value)
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