Rails.application.routes.draw do
  resources :messages
  resources :tasks
  resources :events
  resources :invites
  resources :users
  post '/login', to: 'auth#create'
  get '/auth', to: 'auth#persist'
  delete '/delete_invite', to: 'invites#delete_invite'
  patch '/user_upload/:id', to: 'users#upload_image'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
