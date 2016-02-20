Rails.application.routes.draw do

  resources :answers
  resources :questions
  resources :user
  resources :tests
 devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users



end
