class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPOst.all
  end
end
