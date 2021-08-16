Rails.application.routes.draw do
  root to: 'pages#home'
  resources :plushes, only:[:index, :show] do
    resources :bookings, only:[:create]
  end

  resources :bookings, only:[:destroy, :index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
