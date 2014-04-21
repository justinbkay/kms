Rails.application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'student_search', to: 'office_direct_referrals#student_search', as: 'student_search'

  resources :users
  resources :sessions
  resources :students
  resources :office_direct_referrals
  resources :minor_direct_referrals

  root :to => "office_direct_referrals#index"

end
