class CreateLikes < ActiveRecord::Migration[5.1]
  def change
    create_table :likes do |t|
      t.integer :customer_id
      t.integer :product_id

      t.timestamps
    end
  end
end
