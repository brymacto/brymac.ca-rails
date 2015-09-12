class Post < ActiveRecord::Base
  belongs_to :project
  mount_uploader :photo, PhotoUploader
  validates :title, :contents, presence: true
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged

  def date 
    public_date.strftime('%B %e, %Y')
  end
end
