class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :email
      t.string :house_number
      t.string :password
      t.integer :phone_number
      t.integer :rent
      t.integer :apartment_id

      t.timestamps
    end
  end
end
