Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:create, :update, :index]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
        resources :clubs, only: [:index, :create]
        resources :ratings, only: [:index, :create]
        resources :movies, only: :index
        resources :friends, only: :index
        resources :messages, only: [:create]
        mount ActionCable.server => '/cable'
      end
    end
  end

end
