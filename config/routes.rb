Rails.application.routes.draw do
  get 'comments/new'

  get 'comments/create'

  get 'comments/destroy'

  get 'comments/edit'

  get 'comments/update'



#C# Added comments to resources 
  resources :recipes ,except: :index #I dont need the index page because all i need from it is in my static one now

  resources :comments
  devise_for :users
  root 'statics#homepage'

  get '/users/:id', to: 'users#show', as: "user"

  get "/intro", to: "static#show"
end
