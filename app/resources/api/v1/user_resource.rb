module Api
  module V1
    class UserResource < BaseResource
      attributes :username, :password, :address, :email, :name, :city, :biography, :specialty

      class << self
        def creatable_fields(context)
          fields = [:username, :password, :address, :email, :name, :biography, :city, :specialty]
        end

        alias_method :updatable_fields, :creatable_fields
      end

      def fetchable_fields
        super - [:password]
      end
    end
  end
end
