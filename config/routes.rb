Rails.application.routes.draw do

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'office_direct_referrals/minor_form'
  get 'office_direct_referrals/major_form'

  resources :users
  resources :sessions
  resources :office_direct_referrals

  root :to => "office_direct_referrals#index"

end
