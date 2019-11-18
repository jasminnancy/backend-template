class CreateCarryons < ActiveRecord::Migration[6.0]
  def change
    create_table :carryons do |t|
      t.integer :luggage_id
      t.integer :trip_id
      
      t.timestamps
    end
  end
end
