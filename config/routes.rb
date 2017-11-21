Rails.application.routes.draw do

  root to: 'static_pages#home'

  use_doorkeeper

  namespace :api do
    namespace :v1 do
      jsonapi_resources :users do
        jsonapi_resources :interests
        jsonapi_resources :events
      end
      jsonapi_resources :events
      jsonapi_resources :owner_events
      jsonapi_resources :participate_events

    end
  end
end
