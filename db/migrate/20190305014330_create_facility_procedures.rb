class CreateFacilityProcedures < ActiveRecord::Migration
  def change
    create_table :facility_procedures do |t|

      t.timestamps null: false
    end
  end
end
