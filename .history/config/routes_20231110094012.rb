Rails.application.routes.draw do

  resources :blog_posts

  root "blog_posts#index"
end
