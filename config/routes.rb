Rails.application.routes.draw do

  resources :courses
  resources :students
  resources :teachers
  root 'static_pages#home'
end
