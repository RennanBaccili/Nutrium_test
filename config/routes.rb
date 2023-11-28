Rails.application.routes.draw do
  root 'home#index'

  resources :users

  get 'professionals', to: 'professionals#index', as: 'professionals' do
    # Adicione outras rotas dentro do escopo 'professionals' conforme necessário
  end

end
