class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :draft, -> {where(published_at:nil)}
end


'published_at' datetime field
- nil
- 1.year.ago
- 1.year.from_now
