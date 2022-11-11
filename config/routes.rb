Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  get '/teste', to: 'home#testando'
  get '/edit', to: 'users#edit'

end
