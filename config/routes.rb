Rails.application.routes.draw do
  get 'user/:id' => 'application#show'
  get '/new_bio' => 'application#new'
  get '/create_bio' => 'application#create'
  get '/update_bio/:id' => 'application#update'
  get '/bio/:id/edit' => 'application#edit'
  get '/bio/:id/destroy' => 'application#destroy' 
end
