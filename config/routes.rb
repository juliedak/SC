Rails.application.routes.draw do
  root to: 'pages#home'
  resources :clothes do
    resources :booking, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end

  resources :bookings, except: [:new, :create] do
    member do
      get 'cancel'
      get 'approve'
      get 'deny'
    end
    resources :reviews, only: [:new, :create]
  end
  devise_for :users
end
