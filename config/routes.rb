Rails.application.routes.draw do
  devise_for :admins
  get 'admin', to: 'albums#index'
  scope '/admin' do
    resources :albums
    resources :songs
    resources :playlists
    resources :types
    resources :categories
    resources :artists
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
