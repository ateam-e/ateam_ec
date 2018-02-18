class AddDetailsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :gender, :string, after: :password_digest
    add_column :customers, :dateofbirth, :string, after: :gender
    add_column :customers, :image, :string, after: :dateofbirth
  end
end
