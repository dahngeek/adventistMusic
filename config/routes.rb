Rails.application.routes.draw do
  devise_for :admins
  root :to => "pages#index"
  get '/artista/:id', to: 'pages#artist', as: 'artist'
  get '/valbum/:id', to: 'pages#album', as: 'album'
  get '/albumes', to: 'pages#albums_list'
  get '/buscar/', to: 'pages#search'
  get '/cancion/:id/play' => 'pages#play', :defaults => { :type => 'song' }
  get '/valbum/:id/play' => 'pages#play', :defaults => { :type => 'album' }
  get '/artista/:id/play' => 'pages#play', :defaults => { :type => 'artist' }
  get '/artistas', to: 'pages#artist_list'

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
