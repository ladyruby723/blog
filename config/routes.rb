Rails.application.routes.draw do
  resources :posts
  ActiveAdmin.routes(self)
  devise_for :contributors
  as :contributor do 
    get "signin" => 'devise/sessions#new'
    delete "signout" => 'devise/sessions#destroy'
    get "signup" => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about' # this hash rocket creates a key-value connection between the GET action for a page and the page location (path)
  get 'contact' => 'pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
