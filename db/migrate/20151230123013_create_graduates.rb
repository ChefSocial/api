class CreateGraduates < ActiveRecord::Migration
  def change
    create_table :graduates do |t|
      t.string :desc

      t.timestamps null: false
    end
  end
end
