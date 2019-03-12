class CreateFacilityItems < ActiveRecord::Migration
  def change
    create_table :facility_items do |t|
      t.integer :facility_id
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
