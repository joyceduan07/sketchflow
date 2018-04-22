Rails.application.routes.draw do
  resources :branches
  resources :sketches
  devise_for :users, :controllers => { registrations: 'registrations' }

  authenticated :user do
	  root :to => "sketches#index"
  end

  root 'static_pages#home'
  get 'static_pages/home'
  get '/', to: 'static_pages#home'
end
