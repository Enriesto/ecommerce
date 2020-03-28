class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street_number
      t.string :city
      t.string :province
      t.integer :user_id

      t.timestamps
    end
  end
end
