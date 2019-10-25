Rails.application.routes.draw do
  resources :portfolios
  
  get 'about', to: 'page#about'
  get 'contact', to: 'page#contact'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #root -> localhost:3000
  root to: 'page#home'
end
