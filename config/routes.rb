Rails.application.routes.draw do
 
  resources :articles do
	resources :comments
  end

  resources :users

  match '/signup', to: 'users#new', via: 'get'
 
  root 'welcome#index'
	
end