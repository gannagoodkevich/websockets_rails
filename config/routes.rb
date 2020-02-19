Rails.application.routes.draw do
  resources :users
  resources :messages

  root 'messages#index'
end
