Rails.application.routes.draw do


  devise_for :users
  resources :posts
  root to: "home#landing_page"

  get '/users/:id' => 'users#show'
  get '/users' => 'users#index'

  get '/time_fiddler' => 'home#time_fiddler'
  post '/time_fiddler' => 'home#time_fiddler'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
