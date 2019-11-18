class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :name
      t.string :start_date
      t.string :end_date
      t.integer :budget
      t.text :notes

      t.timestamps
    end
  end
end
