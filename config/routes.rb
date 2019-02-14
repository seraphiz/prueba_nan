Rails.application.routes.draw do
  resources :tareas do
    resources :concluidos, only: :create
  end 
  devise_for :users

  resources :concluidos, only: :index

  root 'tareas#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
