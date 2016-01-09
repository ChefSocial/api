class CreateEventCuisines < ActiveRecord::Migration
  def change
    create_table :event_cuisines do |t|
      t.integer :menu_id
      t.integer :cuisine_id

      t.timestamps null: false
    end
  end
end
