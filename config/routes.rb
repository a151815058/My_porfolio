Rails.application.routes.draw do
  devise_for :users, path:'' ,path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register'}
  resources :portfolios ,except: [:show] ##except show的意思就是把show的route獨立出來寫
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'angular-items', to: 'portfolios#angular'
  
  get 'about', to: 'page#about' 
  get 'contact', to: 'page#contact'

  resources :blogs do
  	member do
  		get :toggle_status
  	end
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root -> localhost:3000
  root to: 'page#home'
end
