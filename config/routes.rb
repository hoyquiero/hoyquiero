Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :contentful_configs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get :eventos, to: 'eventos#index'
end
