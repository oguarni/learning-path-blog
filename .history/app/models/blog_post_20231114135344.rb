class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :draft, -> {where(published_at:nil)}
  scope :published, -> {where(published_at:nil)}
  scope :schedules, -> {where(published_at:nil)}
end

BlogPost.all
BlogPost.draft

'published_at' datetime field
- nil
- 1.year.ago
- 1.year.from_now
