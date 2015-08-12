class AddPhotoCaptionToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :photo_caption, :string
  end
end
