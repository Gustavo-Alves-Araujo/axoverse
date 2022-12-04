Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'home#index'
  get '/edit', to: 'users#edit'
  get '/profile', to: 'home#profile'
  get '/previa', to: 'users#previa'

  resources :users, only: [:show, :edit, :update]

  resources :rooms do
    get 'list', on: :collection
    resources :messages
  end
end
