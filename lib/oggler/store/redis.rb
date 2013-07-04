# encoding: utf-8

require 'redis-namespace'

module Oggler
  module Store
    class Redis

      def initialize redis
        @redis = ::Redis::Namespace.new(:oggler, :redis => redis)
      end

      def set! feature, new_state
        redis.set feature, new_state
      end

      def get feature
        redis.get(feature) == 'true' ? true : false
      end

      private

      attr_reader :redis

    end
  end
end

