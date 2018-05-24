Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/brews/strongest', to: 'brews#strongest', as: 'strongest'

  resources :brews
  resources :customers, only: :show
  resources :purchases, only: [:show, :new, :create]


  # get '/brews', to: 'brews#index'
  # get '/brews/:id', to: 'brews#show', as: brew_path

end
