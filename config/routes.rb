Rails.application.routes.draw do
  resources :categories
  devise_for :users
	  resources :posts do 
	  	resources :answers
	  end
	root to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
