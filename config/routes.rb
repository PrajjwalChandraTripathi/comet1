Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'contact', to: 'contacts#new'
  post 'submit-form', to: 'contacts#create'
  get 'homepages/render_partial', to: 'homepages#render_partial'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  root 'homepages#index'
  # Defines the root path route ("/")
  # root "posts#index"
end
