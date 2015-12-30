class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address1
      t.string :address2
      t.string :city
      t.string :country
      t.string :pincode

      t.timestamps null: false
    end
  end
end
