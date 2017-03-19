Rails.application.routes.draw do

  root "artists#index"
  get "artists" => "artists#index"
  get 'show/new' => "artists#create", as: :new_song
  get "artists/:id" => "artists#show", as: :artist





# resources :artists , :songs

end
