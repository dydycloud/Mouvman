Mouvman::Application.routes.draw do
  get '/events' => 'home#index'
  match'/events' => 'home#index', :as => :user_root
  devise_for :users do
	  get 'logout' => 'devise/sessions#destroy'
  end

  root :to => 'home#index'

end
