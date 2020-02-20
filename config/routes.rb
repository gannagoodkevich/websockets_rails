Rails.application.routes.draw do
  resources :users do
    collection do
      get 'main'
    end
  end
  resources :messages

  mount ActionCable.server => '/cable'
  root 'messages#index'
end
