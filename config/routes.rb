Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'home#index'
  get '/edit', to: 'users#edit'
  get '/profile', to: 'home#profile'
  get '/ajudeme', to: 'home#ajudeme'

  resources :users, only: %i[show edit update]

  resources :rooms do
    get 'list', on: :collection
    resources :messages
  end

  resources :users do
    member do
      get :previa
    end
  end
end
