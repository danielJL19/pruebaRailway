Rails.application.routes.draw do
  get 'dashboard/index'
  get 'admin/index'
  resources :categories
  get 'pages/home'
  #para hacer funcionar el registration
  devise_for :users, :controllers => {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }
  resources :posts
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'pages#home'

  get '/admin',to: 'admin#index'
end
