BogApp::Application.routes.draw do
  root to: 'creatures#index'

  get '/creatures', to: 'creatures#index'

  get '/creatures/new', to: 'creatures#new'

  post '/creatures', to: 'creatures#create'

	#EDIT
  # get '/creatures/:id/edit', to: 'creatures#edit'

  # post '/planes', to: 'creatures#create'	  
end
