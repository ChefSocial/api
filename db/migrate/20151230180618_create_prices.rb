class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer :menu_id
      t.integer :chef_low
      t.integer :chef_mid
      t.integer :chef_high
      t.integer :customer_low
      t.integer :customer_mid
      t.integer :customer_high

      t.timestamps null: false
    end
  end
end
