class CreateProcedures < ActiveRecord::Migration
  def change
    create_table :procedures do |t|
      t.string :name
      t.date :date
      t.string :description
      t.float :price
      t.integer :facility_id
      t.string :status
      t.timestamps null: false
    end
  end
end
