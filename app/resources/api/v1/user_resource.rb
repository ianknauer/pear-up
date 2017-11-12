module Api
  module V1
    class UserResource < JSONAPI::Resource
      attributes :name, :biography, :gender, :avatar, :language, :city, :country, :review
      has_many :interests, acts_as_set: true

      filter :gender
      filter :language
      filter :interests
    end
  end
end
