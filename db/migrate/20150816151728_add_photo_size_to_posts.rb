class AddPhotoSizeToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :photo_size, :string
  end
end
