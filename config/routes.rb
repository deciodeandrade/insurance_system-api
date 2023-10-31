Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth/user'
  
  get 'home' => 'home#index'

  namespace :admin_area do
    get 'home' => 'home#index'
  end

  namespace :insurer_area do
    get 'home' => 'home#index'
  end

  namespace :policy_holder_area do
    get 'home' => 'home#index'
  end
end
