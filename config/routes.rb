Rails.application.routes.draw do
  resources :tests
  resources :answers

  resources :questions
  resources :user




  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users



end
