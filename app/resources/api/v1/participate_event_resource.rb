module Api
  module V1
    class ParticipateEventResource < JSONAPI::Resource
      attributes :name, :description, :ingredients, :spots, :dish, :users, :full_street_address, :pic, :location, :instructor, :city, :date, :time
      model_name 'Event'
      has_many :users

      class << self
        def creatable_fields(context)
          fields = [:name, :description, :ingredients, :spots, :dish, :users, :address, :full_street_address, :pic, :location]
        end

        def records(options ={})
          context = options[:context]
          events = Event.includes(:user_events).references(:user_events).where(user_events: {user_id: context[:current_user].id, role: nil})
        end

        alias_method :updatable_fields, :creatable_fields

      end

      def fetchable_fields
        super
      end
    end
  end
end
