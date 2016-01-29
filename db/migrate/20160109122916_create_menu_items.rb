class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items, id: :uuid do |t|
      t.uuid :menu_id
      t.string :name
      t.uuid :menu_items_category_id

      t.timestamps null: false
    end
  end
end
