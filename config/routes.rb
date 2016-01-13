Rails.application.routes.draw do
resources :libraries
  namespace :api do
    namespace :v1 do
      resources :libraries do
        resources :addresses
      end
    end
  end
end
