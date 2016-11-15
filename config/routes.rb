Rails.application.routes.draw do
  get 'dashboard/index'

  devise_for :users, skip: [:sessions]
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  end

  root 'dashboard#index'
  
  resource :dashboard do
    resources :usuarios
    resources :produtos
    resources :pedidos
    resources :itens
    resources :contas
  end
end
