Rails.application.routes.draw do
  resources :recipes
  devise_for :users
  root 'statics#homepage'

  get '/users/:id', to: 'users#show', as: "user"

end
