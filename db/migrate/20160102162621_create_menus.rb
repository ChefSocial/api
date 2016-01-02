class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.integer :chef_id
      t.string :cuisine
      t.string :name
      t.integer :min_capacity
      t.integer :max_capacity
      t.integer :time_to_prepare
      t.string :description

      t.timestamps null: false
    end
  end
end
