require 'elasticsearch/model'

class User < ApplicationRecord

  mount_base64_uploader :image, ImageUploader

  has_secure_password

  include Elasticsearch::Model

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_needs
  has_many :needs, through: :user_needs


end
