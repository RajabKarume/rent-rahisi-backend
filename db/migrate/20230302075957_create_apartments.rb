class CreateApartments < ActiveRecord::Migration[7.0]
  def change
    create_table :apartments do |t|
      t.string :name
      t.string :location
      t.integer :number_of_houses
      t.integer :landlord_id

      t.timestamps
    end
  end
end
