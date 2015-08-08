class AddPublicDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :public_date, :date
  end
end
