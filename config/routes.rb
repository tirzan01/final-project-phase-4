Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'home#home'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  put '/posts/:id/post_like', to: 'posts#post_like', as: 'like'
  put '/posts/:id/remove_post_like', to: 'posts#remove_post_like', as: 'dislike'

  put 'posts/:id/comments/:id/comment_like', to: 'comments#upvote', as: 'upvote'
  put 'posts/:id/comments/:id/remove_comment_like', to: 'comments#downvote', as: 'downvote'

  resources :users do
    resources :posts
  end

  resources :posts do
    resources :comments
  end

  resources :comments do
    resources :comment_replies
  end

  resources :comment_replies
end
