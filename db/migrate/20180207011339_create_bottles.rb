class CreateBottles < ActiveRecord::Migration[5.1]
  def change
    create_table :bottles do |t|
      t.string :name
      t.string :type
      t.integer :year
      t.string :location
      t.integer :user_id
      t.timestamps
    end
  end
end
