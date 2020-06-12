Rails.application.routes.draw do
  root 'signups#index'
  resources :signups
#   get '/signups', to: 'signups#index'
#   get '/signups/new', to: 'signups#new'
#   post '/signups', to: 'signups#create'
  # get '/signups/:id', to: 'signups#show', as: 'signup'
#   get '/signups/:id/edit', to: 'signups#edit', as: 'edit_signup'
#   patch '/signup/:id', to: 'signups#update'
#   put '/signup/:id', to: 'signups#update'
#   delete '/signup/:id', to: 'signups#delete'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
