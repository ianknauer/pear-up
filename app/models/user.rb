class User < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "150x150>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_needs
  has_many :needs, through: :user_needs
end
