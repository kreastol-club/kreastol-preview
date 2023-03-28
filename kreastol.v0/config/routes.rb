Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"

  # get "/articles", to: "articles#index"

  resources :articles do
    collection do
      get 'remove_all'
    end
    resources :comments
  end

end
