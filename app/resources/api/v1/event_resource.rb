module Api
  module V1
    class EventResource < JSONAPI::Resource
      attributes :name, :description, :ingredients, :spots, :dish, :users, :full_street_address

      has_many :users

      filter :distance, apply: -> (records, value, options) {
        context = options[:context]
        if context[:current_user].longitude != nil
          longitude = context[:current_user].longitude
          latitude = context[:current_user].latitude
          return Event.near([longitude, latitude], value[0])
        else
          address = context[:current_user].address
          return Event.near(address, value[0])
        end

      }

      class << self
        def creatable_fields(context)
          fields = [:name, :description, :ingredients, :spots, :dish, :users, :address]
        end

        alias_method :updatable_fields, :creatable_fields

      end

      def fetchable_fields
        super
      end
    end
  end
end
