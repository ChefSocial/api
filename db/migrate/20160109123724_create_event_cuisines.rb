class CreateEventCuisines < ActiveRecord::Migration
  def change
    create_table :event_cuisines, id: :uuid do |t|
      t.uuid :menu_id
      t.uuid :cuisine_id

      t.timestamps null: false
    end
  end
end
