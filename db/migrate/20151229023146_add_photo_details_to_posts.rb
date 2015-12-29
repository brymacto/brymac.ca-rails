class AddPhotoDetailsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :photo_copyright_name, :string
    add_column :posts, :photo_copyright_url, :string
  end
end
