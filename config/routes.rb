Rails.application.routes.draw do

  resource :profiles
  resources :courses
  resources :teacher_login
  root 'static_pages#home'
end
