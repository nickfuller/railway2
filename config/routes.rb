Railway2::Application.routes.draw do
  
  get 'lines' => 'Lines#index'
  get 'lines/new' => 'Lines#new'
  post 'lines' => 'Lines#create'
  get 'lines/:id' => 'Lines#show'
  
end
