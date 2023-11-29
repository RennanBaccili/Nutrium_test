Rails.application.routes.draw do
  root 'home#index'

  resources :users

  get 'professionals', to: 'professionals#index', as: 'professionals' do

  end
end
