Rails.application.routes.draw do
  get 'clients/index'
  get 'clients/new'
  get 'clients/create'
  get 'clients/edit'
  get 'clients/update'
  get 'clients/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
