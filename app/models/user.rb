
class User < ApplicationRecord

  has_secure_password

  has_many :user_interests
  has_many :user_events
  has_many :user_needs

  has_many :events, through: :user_events
  has_many :interests, through: :user_interests
  has_many :needs, through: :user_needs


end
