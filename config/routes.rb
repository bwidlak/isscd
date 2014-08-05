Rails.application.routes.draw do

  namespace :admin do
    resources :projects
  end

  devise_for :users

  resources :images
  resources :projects

  root to: 'projects#show', id: 'welcome'
end
