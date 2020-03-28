class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.int :order_id
      t.int :product_id
      t.float :price
      t.int :quantity

      t.timestamps
    end
  end
end
