Rails.application.routes.draw do
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # Defines the root path route ("/")
  post '/message', to: 'message#create'
  root "chatroom#index"

  mount ActionCable.server => '/cable'
end
