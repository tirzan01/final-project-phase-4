Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  post '/post_like' => 'post_likes#new'
  post '/post_like' => 'post_likes#destroy'

  post '/comment_like' => 'comment_likes#new'
  post '/comment_like' => 'comment_likes#destroy'

  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comments_reply
  end
end
