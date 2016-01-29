class CreateMenuItemsCategories < ActiveRecord::Migration
  def change
    create_table :menu_items_categories, id: :uuid do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
