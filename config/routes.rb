Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'playlists#index'
  resources :playlists do
    resources :songs, only: [ :show ] do
      get :search
    end
  end
end
