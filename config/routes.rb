Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, :controllers => {:registrations => "users/registrations", :omniauth_callbacks => "users/omniauth_callbacks", :passwords => "users/passwords" }

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    delete 'logout', to: 'devise/sessions#destroy'
    get "register" => "devise/registrations#new"
    get 'verification' => 'devise/registrations#verification'
    post 'verify_user' => 'users/registrations#verify_user'
    post 'verify_otp' => 'users/registrations#verify_otp'
  end

  root 'home#index'
  resources :orders do
    collection do
      post 'quick_order'
      post 'track_order'
    end
  end
  get 'pricing' => 'home#pricing'
  get 'faqs' => 'home#faqs'
  get 'contact_us' => 'home#contact_us'
  resources :coupons do
    collection do
      post 'apply_coupon'
    end
  end
  
  #Api definition
  namespace :api, defaults: { format: :json } do

    scope module: :v1 do
      #List our resources here
      resources :users, :only => [:index, :show, :create, :update, :destroy]
      resources :orders, :only => [:index, :show, :create]
      resources :sessions, :only => [:create, :destroy]
    end

  end

end
