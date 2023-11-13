Rails.application.routes.draw do

  get "/blog_posts/:id", to: "blog_posts#show"

  root "blog_posts#index"
end
