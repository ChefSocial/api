class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews, id: :uuid do |t|
      t.string :description
      t.float :rating

      t.timestamps null: false
    end
  end
end
