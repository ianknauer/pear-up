module Api
  module V1
    class OwnerEventResource < JSONAPI::Resource
      attributes :name, :description, :ingredients, :spots, :dish, :users, :full_street_address, :pic, :location, :instructor, :time, :city, :date
      model_name 'Event'
      has_many :users

      class << self
        def creatable_fields(context)
          fields = [:name, :description, :ingredients, :spots, :dish, :users, :address, :full_street_address, :pic, :location, :instructor, :time, :date, :city]
        end

        def records(options ={})
          context = options[:context]
          context[:current_user].events.merge(UserEvent.owner)
        end

        alias_method :updatable_fields, :creatable_fields

      end

      def fetchable_fields
        super
      end
    end
  end
end
