Rails.application.routes.draw do

  resources :categories
  resources :items

  root "categories#show", id: 1

end
