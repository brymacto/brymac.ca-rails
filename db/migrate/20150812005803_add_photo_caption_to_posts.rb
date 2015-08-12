class AddPhotoCaptionToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :photo_caption, :string
  end
end
