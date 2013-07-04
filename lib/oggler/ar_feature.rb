# encoding: utf-8

require 'active_support'

# f = Feature.first ; f.update(state: !f.state)

module Oggler
  module ARFeature

    extend ActiveSupport::Concern
    include Oggler::Feature

    included do
      after_save :update_feature

      feature_column :state
      feature_name_format -> cont { "#{cont.class.to_s}:#{cont.to_param}" }
    end

    # Class methods
    #
    module ClassMethods

      def feature_column column
        class_attribute :feature_column
        self.feature_column = column
      end

      def feature_name_format format
        class_attribute :feature_name_format
        self.feature_name_format = format
      end
    end

    # Instance methods
    #
    def feature_name
      @feature_name ||= begin
        feature_name_format.respond_to?(:call) ? feature_name_format.call(self) : feature_name_format
      end
    end

    private

      def update_feature
        feature_set! attribute(feature_column)
      end

  end
end

