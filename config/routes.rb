Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :graphs, only: [:index, :show, :create]
  resources :nodes, only: [:index, :show, :create]

end
