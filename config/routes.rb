Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root 'bars#index'
resources :bars do
  resources :happyhours, except: :show do
    resources :menu_items, except: :show
  end
end
end
