Rails.application.routes.draw do
  root to: 'accounts#index'
  resources :accounts, only:[:index, :create, :show, :destroy, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
