Railway2::Application.routes.draw do
  
  get 'lines' => 'Lines#index', :as => 'train_lines'
  get 'lines/new' => 'Lines#new', :as => 'new_train_line'
  post 'lines' => 'Lines#create', :as => 'train_lines'
	# WILL this conflict with index?
  get 'lines/:id' => 'Lines#show', :as => 'train_line'
	get 'lines/:id/edit' => 'Lines#edit', :as => 'edit_train_line'
	put 'lines/:id' => 'Lines#update'
	delete 'lines/:id' => 'Lines#destroy', :as => 'train_line'
  
end
