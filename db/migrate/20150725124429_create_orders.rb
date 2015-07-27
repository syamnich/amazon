class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.datetime :completed_date
      t.integer :state
      t.integer :customer_id
      t.integer :credit_card_id

      t.timestamps null: false
    end
  end
end
