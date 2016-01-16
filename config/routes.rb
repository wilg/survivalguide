Rails.application.routes.draw do

  resources :categories
  resources :items

  get 'locations/:name/items' => 'items#locations', as: :location

  root "categories#show", id: 1

end
