Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get "/signup", to: "users#new", as: "sign_up"
get "login", to: "sessions#new", as: "login"
post "sessions", to: "sessions#create", as: "sessions"
delete "sessions", to: "sessions#destroy"
  # post '/login', to: 'sessions#create'
  # delete '/logout', to: 'sessions#delete'
  resources :users, only: [:index,  :create, :show, :edit, :update] do
    get "/add friend", to: "friendships#new", as: "new_friend"
    post "/users/:user_id/friendships", to: "friendships#create", as: "friendships"
    resources :items, only: [:new, :create] do
      resources :donations, only: [:new, :create]
    end
  end
  
  get "/home", to: "items#index", as: "root"
  
end
