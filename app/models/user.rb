require 'elasticsearch/model'

class User < ApplicationRecord
  include Elasticsearch::Model
  before_save :ensure_authentication_token

  has_attached_file :avatar, styles: { medium: "450x450>", thumb: "100x100>" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  has_many :user_interests
  has_many :interests, through: :user_interests
  has_many :user_needs
  has_many :needs, through: :user_needs

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable

  def ensure_authentication_token
    if authentication_token.blank?
      self.authentication_token = generate_authentication_token
    end
  end

  private

    def generate_authentication_token
      loop do
        token = Devise.friendly_token
        break token unless User.where(authentication_token: token).first
      end
    end


end
