# encoding: utf-8

require 'singleton'

module Oggler
  class Toggler

    include Singleton

    def initialize
    end

    def current_state feature
      get feature
    end

    def enable! feature
      set! feature, true
    end

    def disable! feature
      set! feature, false
    end

    def use_store! new_store
      @store = new_store
    end

    def set! feature, new_state
      valid? feature

      if new_state != current_state(feature)
        store.set! feature.feature_name, new_state
        !feature.feature_state_changed!.include?(false)
      else
        false
      end
    end

    private

      def store
        @store ||= Store::Memory.new
      end

      def valid? feature
        feature.feature_valid?
      end

      def get feature
        valid? feature
        store.get feature.feature_name
      end
  end
end
