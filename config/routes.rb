Railway2::Application.routes.draw do
  
  root :to => 'Lines#index'

	get 'lines' => 'Lines#index', :as => 'train_lines'

  get 'lines/new' => 'Lines#new', :as => 'new_train_line'
  post 'lines' => 'Lines#create'
	# WILL this conflict with index and root?

  get 'lines/:id' => 'Lines#show', :as => 'train_line'

	get 'lines/:id/edit' => 'Lines#edit', :as => 'edit_train_line'
	put 'lines/:id' => 'Lines#update'

	delete 'lines/:id' => 'Lines#destroy'
  
end
