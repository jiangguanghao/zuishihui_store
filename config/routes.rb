Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  
  namespace :admin do
    resoures :products
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end