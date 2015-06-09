Rails.application.routes.draw do

  root 'pages#index'

  namespace :admin do
    get '/' => 'base#index'
    get '/login' => 'base#new'
    post '/login' => 'base#create'

    delete '/logout' => 'base#destroy'
    get '/signup' => 'users#new'
    post '/signup' => 'users#create'

    resources :books
  end

  

  
end
