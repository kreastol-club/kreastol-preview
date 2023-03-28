Rails.application.routes.draw do
  resources :users
  resources :parents
  resources :event_templates
  resources :projects
  resources :events
  resources :places

  root "home#index"

  get 'home/index'
  get 'home/about'

  get 'home/admin'

end
