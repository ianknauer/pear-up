module Api
  module V1
    class EventResource < JSONAPI::Resource
      attributes :name, :description, :ingredients, :spots, :dish, :users, :full_street_address

      has_many :users

      filter :distance, apply: -> (records, value, options) {
        context = options[:context]
        address = context[:current_user].address
        records = Event.near(address, value[0])
      }

      class << self
        def creatable_fields(context)
          fields = [:name, :description, :ingredients, :spots, :dish, :users]
        end

        alias_method :updatable_fields, :creatable_fields

      end

      def fetchable_fields
        super
      end
    end
  end
end
