Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :new, :create, :show, :edit, :update] do
    get "/add friend", to: "friendships#new", as: "new_friend"
    post "/users/:user_id/friendships", to: "friendships#create", as: "friendships"
    resources :items, only: [:new, :create, :destroy] do
      resources :donations, only: [:new, :create]
    end
  end

  get "/home", to: "items#index", as: "root"
  
end
