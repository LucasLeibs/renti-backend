class CreateRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :rentals do |t|
      t.string :adress
      t.string :city
      t.string :state
      t.integer :zipcode

      t.timestamps
    end
  end
end
