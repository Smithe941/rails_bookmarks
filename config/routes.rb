Rails.application.routes.draw do
  resources :bookmarks
  root to: 'pages#home'
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
