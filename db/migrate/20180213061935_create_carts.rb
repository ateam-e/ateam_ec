class CreateCarts < ActiveRecord::Migration[5.1]
  def change
    create_table :carts do |t|
      t.integer :userid
      t.string :productname
      t.integer :productprice
      t.integer :number
      t.integer :subtotal

      t.timestamps
    end
  end
end
