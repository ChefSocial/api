class CreateCuisines < ActiveRecord::Migration
  def change
    create_table :cuisines, id: :uuid do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
