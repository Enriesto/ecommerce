class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :product_number
      t.string :name
      t.text :description
      t.float :price
      t.int :quantity_in_stock
      t.int :category_id

      t.timestamps
    end
  end
end
