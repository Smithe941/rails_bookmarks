Rails.application.routes.draw do
  root 'home#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :bookmarks, except: :show
end
