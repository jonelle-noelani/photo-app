Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :pictures
  resources :picture_tags
  resources :tags

  get '/signup', :to => 'users#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
