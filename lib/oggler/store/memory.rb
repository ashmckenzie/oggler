# encoding: utf-8

module Oggler
  module Store
    class Memory

      def initialize
        @features = {}
      end

      def set! feature, new_state
        features[feature] = new_state
      end

      def get feature
        features.fetch(feature) { features[feature] = false }
      end

      private

      attr_accessor :features
    end
  end
end

