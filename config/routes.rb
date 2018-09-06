Rails.application.routes.draw do
  get 'sellers/new'

  get 'sellers/edit'

  get 'sellers/update'

  get 'sellers/insert'

  get 'sellers/destroy'

  get 'books/show'

  get 'products_show/show'

  get 'fiction',     to: 'products#fiction'

  get 'nonfiction',  to: 'products#nonfiction'

  get 'technical',   to: 'products#technical'

  get 'competitive',  to: 'products#competitive'

  get 'academic',     to: 'products#academic'

  get 'philosophy',   to: 'products#philosophy'

  get 'self_help',    to: 'products#self_help'

  get 'password_resets/new'

  # post 'password_resets/create'

  get 'password_resets/edit'

	get 'sessions/new'

  	root 'static_pages#home'
 	
 	get '/help',    to: 'static_pages#help'
   
    get '/about',   to: 'static_pages#about'
   
    get '/contact', to: 'static_pages#contact'
    
    get '/signup',  to: 'users#new'
   
    get '/login',   to: 'sessions#new'
   
    post '/login',   to: 'sessions#create'
   
    delete '/logout',  to: 'sessions#destroy'

  resources :users
  
  resources :account_activations, only: [:edit]

  resources :password_resets,     only: [:new, :create, :edit, :update]

  resources :microposts,          only: [:create, :destroy]

  resources :sellers

end
