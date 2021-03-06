Rails.application.routes.draw do

  root 'pages#index'
  get '/?title' => 'base#title'

  namespace :admin do
    get '/' => 'base#index'

    get '/login' => 'base#new'
    post '/login' => 'base#create'

    delete '/logout' => 'base#destroy'
    get '/signup' => 'admins#new'
    post '/signup' => 'admins#create'

    resources :books
  end

  

  
end
