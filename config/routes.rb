Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :boardgames
      # resources :users
      post '/auth', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      patch '/current_user/:id', to: 'users#update'
    end
  end
end
