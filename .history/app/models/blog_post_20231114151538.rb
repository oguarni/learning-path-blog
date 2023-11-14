class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true
  validates :published_at, presence: true

  scope :draft, -> {where(published_at:nil)}
  scope :published, -> {where("published_at <= ?", Time.current)}
  scope :scheduled, -> {where("published_at > ?", Time.current)}
  scope :sorted, -> { order("published_at DESC NULLS LAST") }

  def draft?
    published_at.nil?
  end
end
