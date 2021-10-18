Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#index'
  resources :playlists do
    resources :songs, only: [ :show ]
  end

  get '*path', to: 'pages#index', via: :all # route requests that arent for existing paths that arent defined in our API back to our index path.
end
