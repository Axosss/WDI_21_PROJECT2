Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'comments/destroy'

  get 'comments/edit'

  get 'comments/update'

#C# Added comments to resources 
  resources :recipes, :comments
  devise_for :users
  root 'statics#homepage'

  get '/users/:id', to: 'users#show', as: "user"

end
