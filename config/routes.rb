Rails.application.routes.draw do
  get 'homepages/home'
 resources :items
 resources :customers

end
