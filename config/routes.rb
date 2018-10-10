Rails.application.routes.draw do
  # get 'home/index'
  root to: 'home#index'
  get '/about',   to: 'home#index'
  get '/contact',   to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api, format: 'json' do
   resources :tasks, only: [:index, :create, :update]
  end
end
