Rails.application.routes.draw do
  get 'home/index'

  resources :articles
  resource :contacts, only: [:new, :create, :show], path_names: { new: '' }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
