module Api
  module V1
    class EventResource < JSONAPI::Resource
      attributes :name, :description, :ingredients, :spots, :dish

      has_many :users

      class << self
        def creatable_fields(context)
          fields = [:name, :description, :ingredients, :spots, :dish]
        end

        alias_method :updatable_fields, :creatable_fields

        # def records(options = {})
        #   context = options[:context]
        #   context[:current_user].events
        # end
      end

      def fetchable_fields
        super
      end
    end
  end
end
