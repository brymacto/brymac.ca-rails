class AddIndexToProjectIdToPosts < ActiveRecord::Migration
  def change
    add_index :posts, :project_id
  end
end
