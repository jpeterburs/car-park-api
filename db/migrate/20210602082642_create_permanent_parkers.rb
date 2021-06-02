class CreatePermanentParkers < ActiveRecord::Migration[6.1]
  def change
    create_table :permanent_parkers do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_name
      t.string :building_number
      t.integer :zip
      t.string :city

      t.timestamps
    end
  end
end
