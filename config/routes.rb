Wedding::Application.routes.draw do
  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  root :to => "home#index"
  match "about" => "home#about"
  match "details" => "home#details"
  match "signin" => "home#signin"
end
