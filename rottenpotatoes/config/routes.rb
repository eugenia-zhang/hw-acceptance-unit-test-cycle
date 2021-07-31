Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  # match "/asdf/:id", as: 
  # match "/same_director/:id" => 'movies#same_director', :as => 'same_director'
    match "/same_director/:id" => 'movies#same_director', via: [:get]
end
