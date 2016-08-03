Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'bars#index'
resources :bars do
  resources :happyhours
end
end
