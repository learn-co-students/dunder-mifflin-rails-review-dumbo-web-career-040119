Rails.application.routes.draw do
  get '/', to: 'welcome#index', as: 'start'
  resources :dogs, only: [:show, :index]
  resources :employees
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
