Rails.application.routes.draw do

  resource :profiles
  resources :courses, only: [:new, :create, :index]
  resources :teacher_login, only: [:new, :create]
  resources :student_login, only: [:new, :create]
  resources :session, only: [:new, :create, :destroy]
  resources :enrollment, only: [:new, :create]
  root 'static_pages#home'
end
