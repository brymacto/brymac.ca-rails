class AddPhotoSizeToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :photo_size, :string
  end
end
