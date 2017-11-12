Rails.application.routes.draw do

  root to: 'static_pages#home'

  resources :users

  namespace :api do
    namespace :v1 do
      jsonapi_resources :users do
        jsonapi_resources :interests
      end
    end
  end
end
