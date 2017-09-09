class Need < ApplicationRecord
  has_many :user_needs
  has_many :users, through: :user_needs
end
