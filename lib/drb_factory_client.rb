if Rails.env.test?

  require 'drb'

  module DRbFactory

    class DRbInstanceFactory

      class DRbActiveRecord < DRbObject
        def id
          method_missing(:id)
        end
      end

      def initialize(host = "localhost", port = 9000)
        @host = host
        @port = port
        @factory_instance = DRbObject.new(nil, "druby://#{host}:#{port}")
      end

      def create(factory_name)
        remote_factory_port = @factory_instance.get_port_for_factory(factory_name)
        DRbActiveRecord.new(nil, "druby://#{@host}:#{remote_factory_port}")
      end

    end
    
  end

end