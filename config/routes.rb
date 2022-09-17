Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: "movies#home"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:index, :show, :new, :create] do
    resources :booksmarks, only: [:new, :create]
  end
  resources :booksmarks, only: [:destroy]

end
