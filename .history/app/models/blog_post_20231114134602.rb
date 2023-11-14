class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
end

Status string field
- draft
- published
