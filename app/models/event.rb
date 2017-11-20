class Event < ApplicationRecord
  has_many :user_events
  has_many :users, through: :user_events

  geocoded_by :full_street_address
  after_validation :geocode
end
