Rails.application.routes.draw do
  get 'items/index'
  get 'items/show'
  get 'items/create'
  get 'items/edit'
  get 'items/destroy'
 resources :customers

end
