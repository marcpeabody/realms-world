module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verified_user
    end

    protected

    def find_verified_user
      FakeUser.instance
      # TODO: reject_unauthorized_connection
    end

    class FakeUser
      include Singleton

      attr_accessor :away

      def initialize
        @away = false
      end

      def id
        1
      end

      def appear(*args)
        @away = false
      end

      def disappear(*args)
        @away = true
      end

      def away(*args)
        @away = true
      end
    end
  end
end
