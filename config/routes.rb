Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles #, only:[:show,:index, :new, :create, :edit, :update, :destroy]
  root 'pages#home'
  #get 'about', to :'pages#about'
  get 'signup', to: 'users#new'
  #post 'users', to: 'users#create'
  resources :users, except: [:new]
end
