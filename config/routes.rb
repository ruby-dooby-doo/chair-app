Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/chairs' => 'chairs#index'
  get '/chairs/new' => 'chairs#new'
  get '/chairs/:id' => 'chairs#show'
  post '/chairs' => 'chairs#create'
  get '/chairs/:id/edit' => 'chairs#edit'
  patch '/chairs/:id' => 'chairs#update'
end
