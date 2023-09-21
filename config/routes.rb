Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :items
  # get '/items/new', to: 'items#new', as: :new_item
  # post '/items', to: 'items#create', as: :items

  # get 'items', to: 'items#index'
  # get '/items/:id', to: 'items#show', as: :item

  # get '/items/:id/edit', to: 'items#edit', as: :edit_item
  # patch '/items/:id', to: 'items#update'

  # delete '/items/:id', to: 'items#destroy'
end
