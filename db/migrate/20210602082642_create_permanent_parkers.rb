class CreatePermanentParkers < ActiveRecord::Migration[6.1]
  def change
    create_table :permanent_parkers do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :street_name, null: false
      t.string :building_number, null: false
      t.integer :zip, null: false
      t.string :city, null: false
    end
  end
end
