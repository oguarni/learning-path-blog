class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :draft, -> {where(published_at:nil)}
  scope :published, -> {where("published_at <= ?", Time.current)}
  scope :scheduled, -> {where("published_at > ?", Time.current)}
end

`status` string field
- draft
- published
- scheduled

`published_at` datetime field
- nil
- 1.year.ago
- 1.year.from_now
