Mouvman::Application.routes.draw do
    
  devise_for :users do
	  get 'logout' => 'devise/sessions#destroy'
  end
  
  resources :events do
  	resources :occasions
  end

  get 'events', :to => 'events#index', :as => :user_root
  
  root :to => 'home#index'
end
