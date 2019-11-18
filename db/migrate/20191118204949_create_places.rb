class CreatePlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :places do |t|
      t.integer :trip_id
      t.string :name
      t.integer :cost
      t.string :address1
      t.string :address2
      t.string :city
      t.string :us_state
      t.string :zip
      t.string :country
      t.text :notes
      
      t.timestamps
    end
  end
end
