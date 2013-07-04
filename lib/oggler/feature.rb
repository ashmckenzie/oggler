# encoding: utf-8

module Oggler
  module Feature

    def feature_name_format format
      @feature_name_format = format
    end

    def feature_enabled?
      feature_current_state == true
    end

    def feature_current_state
      feature_instance.current_state(self)
    end

    def feature_enable!
      feature_instance.enable!(self)
    end

    def feature_disable!
      feature_instance.disable!(self)
    end

    def feature_set! state
      feature_instance.set!(self, state)
    end

    def default_feature_name
      self
    end

    def feature_name
      @feature_name ||= begin
        format = @feature_name_format || default_feature_name
        format.respond_to?(:call) ? instance_eval(&format) : format
      end
    end

    def feature_commands
      []
    end

    def feature_state_changed!
      feature_commands.each { |command| command.call }
    end

    def feature_valid?
      true
    end

    private

    def feature_instance
      Toggler.instance
    end
  end
end
