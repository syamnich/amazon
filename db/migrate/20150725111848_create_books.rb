class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :description
      t.integer :price
      t.integer :book_in_stock
      t.integer :author_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
