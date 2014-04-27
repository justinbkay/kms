Rails.application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'student_search', to: 'office_direct_referrals#student_search', as: 'student_search'
  post 'students/search', to: 'students#search'
  get 'students/:id/office_direct_referrals', to: 'students#office_direct_referrals', as: 'odr_by_student'

  post 'detention_dates/mark_complete', to: 'detention_dates#mark_complete'

  resources :users
  resources :sessions
  resources :students
  resources :office_direct_referrals
  resources :minor_direct_referrals
  resources :password_resets
  resources :detention_dates

  root :to => "office_direct_referrals#index"

end
