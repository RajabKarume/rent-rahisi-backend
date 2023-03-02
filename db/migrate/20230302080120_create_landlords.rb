class CreateLandlords < ActiveRecord::Migration[7.0]
  def change
    create_table :landlords do |t|
      t.string :username
      t.string :password
      t.string :full_name

      t.timestamps
    end
  end
end
