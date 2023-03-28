Rails.application.routes.draw do
  get 'home/index'
  get 'home/about'
  post 'home/set_session'
  root "home#index"
end
