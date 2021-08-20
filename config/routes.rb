Rails.application.routes.draw do
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root to: 'pages#home'
  resources :plushes, only:[:index, :show] do
    resources :bookings, only:[:create]
  end

  resources :bookings, only:[:destroy, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
