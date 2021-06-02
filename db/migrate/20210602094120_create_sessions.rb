class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.string :license_plate, null: false
      t.references :permanent_parker, foreign_key: true
      t.datetime :entered_at, null: false
      t.datetime :exited_at
    end
  end
end
