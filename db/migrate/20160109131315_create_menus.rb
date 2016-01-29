class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus, id: :uuid do |t|
      t.uuid :chef_id
      t.string :name
      t.integer :max_capacity
      t.integer :min_capacity

      t.timestamps null: false
    end
  end
end
