Rails.application.routes.draw do

  root 'pages#index'

  namespace :admin do
    get '/' => 'base#index'
    resources :books
  end

  

  
end
