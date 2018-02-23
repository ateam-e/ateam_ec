class AddDetailsToFinalorders < ActiveRecord::Migration[5.1]
  def change
    add_column :finalorders, :user_id, :integer
    add_column :finalorders, :product_id, :integer
    add_column :finalorders, :quantity, :integer
  end
end
