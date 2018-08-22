Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/chairs', to: 'chairs#index'
  get '/chairs/new', to: 'chairs#new'
  get '/chairs/:id', to: 'chairs#show'
  post '/chairs', to: 'chairs#create'
  get '/chairs/:id/edit', to: 'chairs#edit'
  patch '/chairs/:id', to: 'chairs#update'
  delete '/chairs/:id', to: 'chairs#destroy'
end
