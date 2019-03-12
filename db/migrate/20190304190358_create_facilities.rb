class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :city
      t.string :state
      t.string :zip
      t.string :specialty
      t.timestamps null: false
    end
  end
end
