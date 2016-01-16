Rails.application.routes.draw do

  resources :categories
  resources :items

  get 'locations/:name/items' => 'items#location', as: :location
  get 'locations' => 'items#locations', as: :locations

  root "categories#show", id: 1

end
