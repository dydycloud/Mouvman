Mouvman::Application.routes.draw do
  
  resources :events

  get 'events', :to => 'events#index', :as => :user_root
  
  devise_for :users do
	  get 'logout' => 'devise/sessions#destroy'
  end

  root :to => 'home#index'
end
