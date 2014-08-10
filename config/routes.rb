Rails.application.routes.draw do

  namespace :admin do
    resources :descriptions
    resources :images
    resources :projects do
      member do
        get :edit_multiple_images
        put :update_multiple_images
        get :edit_multiple_descriptions
        put :update_multiple_descriptions
      end
    end
  end

  devise_for :users

  resources :images
  resources :projects

  root to: 'projects#show', id: 'welcome'
end
