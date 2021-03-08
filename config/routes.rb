Rails.application.routes.draw do
  

  #api
  get '/birds' => 'birds#index'
  get '/birds/:id' => 'birds#show' # new
end