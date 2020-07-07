Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/welcome', to: 'users#welcome'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  

end
