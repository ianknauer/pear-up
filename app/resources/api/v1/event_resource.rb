module Api
  module V1
    class EventResource < JSONAPI::Resource
      attributes :name, :description, :ingredients, :spots, :dish, :users, :full_street_address, :pic, :location, :instructor

      has_many :users

      before_save do
        @model.instructor = context[:current_user].name
        @model.user_events.build(:user => context[:current_user], role: "owner") if @model.new_record?
      end

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
          fields = [:name, :description, :ingredients, :spots, :dish, :users, :address, :full_street_address, :pic, :location]
        end

        def records(options ={})
          context = options[:context]
          events = Event.includes(:user_events).references(:user_events).where.not(user_events: {user_id: context[:current_user].id })
        end

        alias_method :updatable_fields, :creatable_fields

      end

      def fetchable_fields
        super
      end
    end
  end
end
