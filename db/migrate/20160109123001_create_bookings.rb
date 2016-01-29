class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings, id: :uuid do |t|
      t.uuid :menu_id
      t.uuid :user_id

      t.timestamps null: false
    end
  end
end
