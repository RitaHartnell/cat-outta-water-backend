Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    namespace :api do
      namespace :v1 do
        resources :users, only: [:index, :create, :update, :destroy]
        post '/login', to: 'auth#create'
        get '/profile', to: 'users#profile'
      end
    end
  end
end
