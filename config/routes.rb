Rails.application.routes.draw do
    
  get 'comments/new'
  get 'comments/create'
  get 'comments/show' => "comments#show"
  get 'comments/destroy'
  
  devise_for :users
  root "posts#index"    
  get 'posts/index'
  get 'posts/new' => "posts#new"
  post 'posts/create' => "posts#create"
  get 'posts/show/:id' => "posts#show"
  get 'posts/edit/:id' => "posts#edit"
  post 'posts/update/:id' => "posts#update"
  get 'posts/destroy/:id' => "posts#destroy" 

  post 'posts/show/:id/comments/create' => "comments#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
