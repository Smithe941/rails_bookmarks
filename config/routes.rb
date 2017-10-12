Rails.application.routes.draw do
  resources :bookmarks do
        post 'search', on: :collection
      end
  resources :friends
  root to: 'bookmarks#index'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
