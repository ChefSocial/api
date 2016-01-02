class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :menu_id
      t.datetime :date
      t.datetime :start_time
      t.datetime :end_time
      t.integer :cost_to_chef
      t.integer :cost_to_customer

      t.timestamps null: false
    end
  end
end
