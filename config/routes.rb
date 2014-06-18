Rails.application.routes.draw do
  devise_for :users
  as :user do
    get :sign_up, to: 'devise/registrations#new', as: :sign_up
    get :login,   to: 'devise/sessions#new', as: :login
    get :logout,  to: 'devise/sessions#destroy', as: :logout
  end

  get :dashboard, to: 'home#dashboard', as: :dashboard

  root to: 'home#index'
end
