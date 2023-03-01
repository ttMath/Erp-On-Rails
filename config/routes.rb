Rails.application.routes.draw do
root 'homepages#home'
 resources :items
 resources :customers
 resources :sales

end
