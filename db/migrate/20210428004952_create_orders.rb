class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :item
      t.integer :quantity
      t.integer :price
      t.string :address
      t.integer :user_id

      t.timestamps
    end
  end
end
