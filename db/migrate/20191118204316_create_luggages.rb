class CreateLuggages < ActiveRecord::Migration[6.0]
  def change
    create_table :luggages do |t|
      t.integer :user_id
      t.string :name
      t.string :luggage_type
      t.integer :size
      t.integer :miles_travelled
      
      t.timestamps
    end
  end
end
