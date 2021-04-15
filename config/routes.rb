Rails.application.routes.draw do
  resources :elements
  # resources :posts
  devise_for :authors
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  scope module: 'authors' do
  	resources :posts do
  	  resources :elements
  	  resources :comments 
    end
  end
  
end
