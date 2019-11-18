class CreateHotels < ActiveRecord::Migration[6.0]
  def change
    create_table :hotels do |t|
      t.integer :trip_id
      t.string :name
      t.integer :cost
      t.string :starting_date
      t.string :ending_date
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
