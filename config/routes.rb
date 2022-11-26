Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/edit', to: 'users#edit'
  get '/profile', to: 'home#profile'


  resources :rooms do
    get 'list', on: :collection
    resources :messages
  end
end
