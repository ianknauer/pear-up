class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events

  geocoded_by :location
  after_validation :geocode
end
