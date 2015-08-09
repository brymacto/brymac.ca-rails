class Post < ActiveRecord::Base
  validates :title, :contents, presence: true
  validates :title, uniqueness: true
  extend FriendlyId
  friendly_id :title, use: :slugged
end
