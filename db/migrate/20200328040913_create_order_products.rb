# frozen_string_literal: true

class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.integer :order_id
      t.integer :product_id
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
