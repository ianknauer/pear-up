require 'elasticsearch/model'

class User < ApplicationRecord
  
  has_secure_password

  include Elasticsearch::Model

  has_attached_file :avatar, styles: { medium: "450x450>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_needs
  has_many :needs, through: :user_needs


end
