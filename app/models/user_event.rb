class UserEvent < ApplicationRecord
  belongs_to :user
  belongs_to :event

  scope :owner, -> { where(role: 'owner') }
end
