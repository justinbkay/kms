Rails.application.routes.draw do

  get 'minor_direct_referral/index'

  get 'minor_direct_referral/new'

  get 'minor_direct_referral/edit'

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'student_search', to: 'office_direct_referrals#student_search', as: 'student_search'

  get 'office_direct_referrals/minor_form'
  get 'office_direct_referrals/major_form'
  match 'office_direct_referrals/major_form' => 'office_direct_referrals#create_major_form', :via => :post, :as => 'create_major_form'

  resources :users
  resources :sessions
  resources :office_direct_referrals

  root :to => "office_direct_referrals#index"

end
