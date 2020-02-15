Rails.application.routes.draw do
  devise_for :users
  resources :dogs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/", to: "dogs#welcome", as: "root"

  #display my list of dogs
  get "/mylist", to: "my_lists#index", as: "my_list"
 
 
  

end
