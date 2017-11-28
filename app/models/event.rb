class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events

  geocoded_by :location do |obj, results|
    if geo = results.first
      obj.city = geo.city
      obj.latitude = geo.latitude
      obj.longitude = geo.longitude
    end
  end

  after_validation :geocode
end
