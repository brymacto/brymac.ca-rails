class Project < ActiveRecord::Base
  has_many :posts
  mount_uploader :photo, PhotoUploader
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged
  def date 
    public_date.strftime('%B %e, %Y')
  end
end
