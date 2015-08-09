class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :code_url
      t.string :live_url
      t.date :public_date

      t.timestamps null: false
    end
  end
end
