class User < ApplicationRecord
  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_needs
  has_many :needs, through: :user_needs
end
