Rails.application.routes.draw do
  get 'orders/new'
  devise_for :users
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "dogs#welcome", as: "root"

  #display my list of dogs
  get "/mylist", to: "my_lists#index", as: "my_list"
 
  get "/orders", to: "orders#new", as: "new_order"

  get "/orders/complete", to:"orders#complete", as: "complete_order"
  
  get "/reviews/new", to: "reviews#new", as: "new_review"
  post "/reviews/", to: "reviews#create"
end
