class Project < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  acts_as_taggable
  extend FriendlyId
  friendly_id :title, use: :slugged
end
