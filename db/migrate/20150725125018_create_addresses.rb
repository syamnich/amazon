class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :address
      t.integer :zipcode
      t.string :city
      t.integer :phone
      t.integer :country_id

      t.timestamps null: false
    end
  end
end
