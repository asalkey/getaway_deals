Getaway::Application.routes.draw do
  root 'getaways#index'
  resources :getaways

end
