class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs, id: :uuid do |t|
      t.string :address
      t.string :name
      t.string :email
      t.float :rating

      t.timestamps null: false
    end
  end
end
