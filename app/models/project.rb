class Project < ActiveRecord::Base
  mount_uploader :photo, PhotoUploader
  acts_as_taggable
end
