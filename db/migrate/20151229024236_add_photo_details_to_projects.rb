class AddPhotoDetailsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :photo_copyright_name, :string
    add_column :projects, :photo_copyright_url, :string
  end
end
