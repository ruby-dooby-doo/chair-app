Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/chairs' => 'chairs#index'
  get '/chairs/:id' => 'chairs#show'
end
