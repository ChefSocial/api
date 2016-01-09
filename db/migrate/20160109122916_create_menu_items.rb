class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.integer :menu_id
      t.string :name
      t.integer :menu_items_category_id

      t.timestamps null: false
    end
  end
end
