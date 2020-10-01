Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :pictures
  resources :picture_tags
  resources :tags

  resources :login, only: [:create]

  get '/login', :to => 'login#new'

  get '/signup', :to => 'users#new'

  delete '/logout', :to => 'login#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
