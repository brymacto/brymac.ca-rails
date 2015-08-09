class Post < ActiveRecord::Base
  validates :title, :contents, presence: true
end
