class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :order_number
      t.float :subtotal
      t.float :GST
      t.float :PST
      t.float :HST
      t.int :user_id
      t.int :status_id

      t.timestamps
    end
  end
end
