class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :micropost
  default_scope -> { order(created_at: :desc) }
  validates :micropost_id, presence: true
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 1000 }
end
