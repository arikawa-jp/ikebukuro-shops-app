Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :shops ←アップデート予定
  resources :stores

  get 'stores', to: 'stores#index'
  post 'stores/index'
  
  get 'shops/index'
  get 'shops', to: 'shops#index'
  post 'shops/index'
  
  get 'shops/add'
  post 'shops/add'

  get 'shops/find'
  post 'shops/find'

  get 'shops/:id' , to: 'shops#show'
  
  get 'shops/edit/:id', to: 'shops#edit'
  patch 'shops/edit/:id', to: 'shops#edit'
  
  
  get 'shops/delete/:id', to: 'shops#delete'
  
end
