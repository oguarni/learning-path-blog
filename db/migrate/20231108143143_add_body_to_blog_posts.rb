class AddBodyToBlogPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :blog_posts, :body, :text
  end
end
